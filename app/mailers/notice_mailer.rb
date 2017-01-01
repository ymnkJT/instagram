class NoticeMailer < ApplicationMailer
  def sendmail_picture(picture)
    @picture = picture

    mail to:      picture.user.email,
         subject: '【Instagram?】よりお知らせ'
  end
end
