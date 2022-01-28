class SessionsController < ApplicationController
  def new
  end

  def create
    user  = User.find_by(email: params[:session][:email].downcase)
    if user &. authenticate(params[:session][:password])
      if user.activated?
        log_in user
        # session_helperよりremember関数を呼び出す
        params[:session][:remember_me] == '1' ? remember(user) : forget(user)  
        redirect_back_or user
      else
        message = "お使いのアカウントは有効になっておりません"
        message += "アカウント設定メールを確認してください"
        flash[:warning] = message
        redirect_back_or root_url
      end
    else
      flash.now[:danger] = "メールアドレスかパスワードが間違っています"
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
