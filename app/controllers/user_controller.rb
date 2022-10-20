class UserController < ApplicationController
    def withdrawal
        @user = User.find(params[:id])
        # is_deletedカラムをtrueに変更することにより削除フラグを立てる
        @user.update(is_deleted: true)
        reset_session
        redirect_to new_user_session_path
    end
end
