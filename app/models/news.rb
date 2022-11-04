class News < ApplicationRecord
    acts_as_paranoid
    has_many :news_reads, dependent: :destroy
    has_many :notifications, dependent: :destroy
    has_many :news_area_sections, dependent: :destroy
    belongs_to :user, optional: true
    belongs_to :area, optional: true
    belongs_to :section, optional: true
    accepts_nested_attributes_for :news_area_sections, allow_destroy: true



    mount_uploader :image, ImageUploader
    scope :archives, -> {unscoped.where(archive: true).order('created_at DESC')}
    default_scope { where(archive: false) }

    def self.search(keyword,areas,sections)
            if keyword != ""
                @news = self.where(["title like ? OR body like ?", "%#{keyword}%", "%#{keyword}%"]) 
            else
                @news = News.all
            end
        
            if areas.count > 0
                @news = @news.where(id: NewsAreaSection.where(area_id: areas).pluck('news_id'))
            end

            if sections.count > 0
                @news = @news.where(id: NewsAreaSection.where(section_id: sections).pluck('news_id'))
            end
            @news
    end

    def create_notification_like!(current_user)
        # すでに「いいね」されているか検索
        temp = Notification.where(["user_id = ? and news_id = ?", user_id, id])
        # いいねされていない場合のみ、通知レコードを作成
        if temp.blank?
          notification = current_user.active_notifications.new(
            news_id: id,
            user_id: user_id,
          )
          # 自分の投稿に対するいいねの場合は、通知済みとする
        #   if notification.user.userstyle == 0 == notification.user.user_style == 1
        #     notification.checked = true
        #   end
          notification.save if notification.valid?
        end
      end
    

    
end
