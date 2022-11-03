class Notification < ApplicationRecord
    belongs_to :user, class_name: 'User',foreign_key: 'user_id', optional: true
    belongs_to :news, optional: true
    belongs_to :schedule, optional: true
end
