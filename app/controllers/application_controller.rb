class ApplicationController < ActionController::Base

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end


  # m210521_1行目では、ログインしていない輩は自動でログイン画面に導くようにしてるよ
  # 2行目では、デバイズコントローラが処理するときは、ピックアップするparamsに
  # # nameも仲間にいれてあげてあげよーという処理をしてるよ
  # サニタイザーはデバイズをインストールしているから使えるチートコードだよ
  # 「自作カラムを仲間にいれてあげよう、ふっふっふ」という偉そうなやつだよ。
  


end



