class TwepicMailer < ApplicationMailer
  def twepic_mail(twepic)
    @twepic = twepic
     mail to: "maya_sato@diveintocode.jp", subject: "お問い合わせの確認メール"
  end
end
