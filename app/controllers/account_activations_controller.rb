class AccountActivationsController < ApplicationController

  def edit
    user = User.find_by(email: params[:email])
    if user && !user.activated? && user.authenticated?(:activation, params[:id])
      user.activate
      log_in user
      flash[:success] = "アカウント設定が完了しました"
      redirect_to user
    else
      flash[:danger] = "リンクが誤っています"
      redirect_to root_url
    end
  end
end
