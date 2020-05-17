class ChangeOwnerMailer < ApplicationMailer
  def change_owner_mail(new_owner_email)
    @new_owner_email = new_owner_email
    mail to: "#{@new_owner_email}", subject: "チーム権限移行のお知らせ"
  end
end 