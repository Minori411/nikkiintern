class News < ApplicationRecord
    def self.search(keyword)
        if keyword.pesent?
           news_ids = News.where(["title like? OR body like?", "%#{keyword}%", "%#{keyword}%"]).ids
        else
           news_ids = []
        end
    end
end
