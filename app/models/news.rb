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
    scope :archives, -> {where(archive: true).order('created_at DESC')}

    def self.search(keyword)
        where(["title like ? OR body like ?", "%#{keyword}%", "%#{keyword}%"])
    end

    # area = Area.all
    # area = area.where(area_name: true) if area_name == "1"
    # area = area.where(B: true) if area_name == "1"
    # area = area.where(C: true) if area_name == "1"

    
end
