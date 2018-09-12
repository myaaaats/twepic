class TwepicMailer < ApplicationMailer
  def twepic_mail(twepic)
    @twepic = twepic
     mail to: @twepic.user.email, subject: "Twepic投稿確認メール"
  end
end
