class Read < ApplicationRecord
    belongs_to :user
    belongs_to :news
    belongs_to :schedule
end
