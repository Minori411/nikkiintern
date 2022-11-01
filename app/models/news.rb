class News < ApplicationRecord
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

    

    
end
