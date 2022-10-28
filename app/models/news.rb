class News < ApplicationRecord
    has_many :areas, dependent: :destroy
    has_many :sections, dependent: :destroy
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
