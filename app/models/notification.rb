class Notification < ApplicationRecord
    default_scope -> { order(created_at: :desc) }
    scope :unread, -> { where(checked: false) }
    belongs_to :user, class_name: 'User',foreign_key: 'user_id', optional: true

    def self.create_notification!(user_ids,target_id,action)
        user_ids.each do |id|
          notification = Notification.new(
            user_id: id,
            target_id: target_id,
            action: action
          )
          notification.save if notification.valid?
        end
    end
end
