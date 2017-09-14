class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_instam.subject
  #
  def sendmail_instam(instam)
      @instam = instam
  #  @greeting = "Hi"

    mail to: "keepyourself75@gmail.com",
    subject: '【Intasgram2】画像が投稿されました'
  end
end
