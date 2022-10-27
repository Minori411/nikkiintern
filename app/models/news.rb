class News < ApplicationRecord
    mount_uploader :image, ImageUploader
    scope :archives, -> {where(archive: true).order('created_at DESC')}

    def self.search(keyword)
        where(["title like ? OR body like ?", "%#{keyword}%", "%#{keyword}%"])
    end
end
