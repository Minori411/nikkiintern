class Read < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :news, optional: true
    belongs_to :schedule, optional: true
end
