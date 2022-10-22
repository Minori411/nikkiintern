class News < ApplicationRecord
    def self.search(keyword)
        where(["title like? OR body like?", "%#{keyword}%", "%#{keyword}%"])
    end
end
