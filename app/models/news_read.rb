class NewsRead < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :news, optional: true
end
