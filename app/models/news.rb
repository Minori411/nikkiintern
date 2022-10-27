class News < ApplicationRecord
    mount_uploader :image, ImageUploader

    def self.search(keyword)
        where(["title like ? OR body like ?", "%#{keyword}%", "%#{keyword}%"])
    end
end
