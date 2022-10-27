class NewsController < ApplicationController
  before_action :authenticate_user!

  def search
    @news = News.search(params[:keyword])
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
  end

  def index
    @news = News.all
  end

  def show
    @news = News.find(params[:id])
  end

  def create
    @news = News.new(news_params) # 何を新しく保存するか指定
    @news.user_id = current_user.id
    if @news.save # もし保存ができたら
      redirect_to news_path(@news.id) # 投稿画面に遷移
    else # できなければ
      render :new # newに遷移
    end
  end

  def new
    @news = News.new
  end

  def edit
    @news = News.find(params[:id])
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
    params.require(:news).permit(:title, :body, :image, :from, :to).merge(user_id: current_user.id)
  end
end
