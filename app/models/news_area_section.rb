class NewsAreaSection < ApplicationRecord
    belongs_to :news, optional: true
    belongs_to :area, optional: true
    belongs_to :section, optional: true
end
