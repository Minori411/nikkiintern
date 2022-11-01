class UsersController < ApplicationController
    def withdrawal
        @user = User.find(params[:id])
        # is_deletedカラムをtrueに変更することにより削除フラグを立てる
        @user.update(deleted_at: true)
        reset_session
        redirect_to new_user_session_path
    end
end
