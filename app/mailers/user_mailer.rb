class UserMailer < ApplicationMailer

  def account_activation(user)
    @user = user
    # メール送信先、タイトル
    mail to: user.email, subject: "アカウント有効化のお知らせ"
  end

  def password_reset(user)
    @user = user
    # メール送信先、タイトル
    mail to: user.email, subject: "パスワード再設定"
  end
end