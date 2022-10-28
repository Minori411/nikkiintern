class NewsAreaSection < ApplicationRecord
    belongs_to :news
    belongs_to :area
    belongs_to :section
end
