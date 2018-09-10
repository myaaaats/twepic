class TwepicMailer < ApplicationMailer
  def twepic_mail(twepic)
    @twepic = twepic
     mail to: @twepic.user.email, subject: "お問い合わせの確認メール"
  end
end
