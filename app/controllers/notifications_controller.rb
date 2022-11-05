class NotificationsController < ApplicationController
    after_action :noteread
    def index
        @notifications = current_user.passive_notifications.unread.page(params[:page]).per(20)
    end

      private

      def noteread
        notifications = current_user.passive_notifications.unread.page(params[:page]).per(20)
        notifications.where(checked: false).each do |notification|
            notification.update(checked: true)
        end
      end

end
