class NewsController < ApplicationController
  before_action :authenticate_user!

  def search
    areas = []
    if params[:area_name_a].to_i == 1
      areas << 1
    end
    if params[:area_name_b].to_i == 1
      areas << 2
    end
    if params[:area_name_c].to_i == 1
      areas << 3
    end

    sections = []
    if params[:section_name_a].to_i == 1
      sections << 1
    end
    if params[:section_name_b].to_i == 1
      sections << 2
    end
    if params[:section_name_c].to_i == 1
      sections << 3
    end
    if params[:section_name_d].to_i == 1
      sections << 4
    end
    if params[:section_name_e].to_i == 1
      sections << 5
    end

    Rails.logger.debug(params[:keyword])
    Rails.logger.debug(areas)
    Rails.logger.debug(sections)

    @news = News.search(params[:keyword],areas,sections)
    @keyword = params[:keyword]
    render "index"
  end

  def archives
    @news = News.archives
  end

  def archive
    news = News.find(params[:id])
    news.archive = true
    news.save
    redirect_to news_index_path
  end

  def back
    if current_user.userstyle == 0
    news = News.unscoped.find(params[:id])
    news.archive = false
    news.save
    redirect_to archives_path
    end
  end

  def index
    @news = News.all
  end

  def show
    @news = if current_user.userstyle == 0
    News.unscoped.find(params[:id])
    else
    News.find_by(id: params[:id])
    end
    @news_area_sections = @news.news_area_sections
    # if NewsRead.create(news_id: @news.id, user_id: current_user.id) 
    #   @news_read = NewsRead.update(complete: true)
    # end
    #   @reads = NewsRead.where(complete:true)
    # @news_reads = News.find(params[:id])
    unless NewsRead.find_by(user_id: current_user.id, news_id: @news.id)
      current_user.news_reads.create(user_id: current_user.id, news_id: @news.id)
    end
    @news_reads = @news.news_reads
  end

  def create
    @news = News.new(news_params) # 何を新しく保存するか指定
    @news.user_id = current_user.id
    
    # ここから
    if @news.save # もし保存ができたら
      news_area_sections = params[:news][:news_area_sections_attributes].values
      Rails.logger.warn("news_area_sections")
      #news_area_sections.map [{area_id: 99,#全パターン/all all
      if news_area_sections.map{|v| v["area_id"].to_i}.include?(4) && news_area_sections.map{|v| v["section_id"].to_i}.include?(6)
        target_user_ids = User.where(userstyle: 0,userstyle: 1).ids
        user_ids = target_user_ids - [current_user.id]
        Notification.create_notification!(user_ids,@news.id,"news")
        #エリアが全パターンのバージョン/all sectionA
      elsif news_area_sections.map{|v| v["area_id"].to_i}.include?(4) && !news_area_sections.map{|v| v["section_id"].to_i}.include?(6)
        target_user_ids = params[:news][:news_area_sections_attributes].values.map do |v| 
        UserAreaSection.where(area_id: v[:area_id])
        end.reduce(&:or).pluck('user_id')
        user_ids = target_user_ids - [current_user.id]
        Notification.create_notification!(user_ids,@news.id,"news")
        #セクションが全パターンのバージョン/sectionA all
      elsif !news_area_sections.map{|v| v["area_id"].to_i}.include?(4) && news_area_sections.map{|v| v["section_id"].to_i}.include?(6) 
        target_user_ids = params[:news][:news_area_sections_attributes].values.map do |v| 
        UserAreaSection.where(section_id: v[:section_id])
        end.reduce(&:or).pluck('user_id')
        user_ids = target_user_ids - [current_user.id]
        Notification.create_notification!(user_ids,@news.id,"news")
        #個別通知/Area_A section_A
      else
        target_user_ids = params[:news][:news_area_sections_attributes].values.map do |v| 
        UserAreaSection.where(area_id: v[:area_id], section_id: v[:section_id])
        end.reduce(&:or).pluck('user_id')
        # admin_user_ids = User.where(userstyle: 0).ids
        user_ids = target_user_ids - [current_user.id]
        Notification.create_notification!(user_ids,@news.id,"news")
      end
    # ここまで
      redirect_to news_path(@news.id) # 投稿画面に遷移
    else # できなければ
      render :new # newに遷移
    end
  end

  def new
    @news = News.new
    @news.news_area_sections.build
  end

  def edit
    @news = News.find(params[:id])
    @news.news_area_sections.build
  end

  def update
    @news = News.find(params[:id])
    if @news.update(news_params)
      redirect_to news_path(@news.id)
    else
      render :edit
    end
  end

  def destroy
    @news = News.find(params[:id])
    @news.destroy
    redirect_to action: 'index'
  end

  private  # ストロングパラメーター（予期しない値を変更されてしまう脆弱性を防ぐ機能）

  def news_params
    params.require(:news).permit(:title, :body, :image, :area_id, :section_id, news_area_sections_attributes:[:id,:area_id,:section_id]).merge(user_id: current_user.id)
  end
end