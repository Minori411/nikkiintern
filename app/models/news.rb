class News < ApplicationRecord
    has_many :areas, dependent: :destroy
    has_many :sections, dependent: :destroy
    has_many :reads, dependent: :destroy
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
                where(["title like ? OR body like ?", "%#{keyword}%", "%#{keyword}%"])
            end
                
                areas = NewsAreaSection.all
                areas = NewsAreaSection.where(area_id: areas)

            if areas.count >= 0
            end

            if sections.count >= 0
                where(section_id: sections)
            end
    end

    

    
end
