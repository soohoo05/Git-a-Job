class Mailer < ApplicationMailer

  def email(user,theSubject,theBody)

    @user=user

  mail(to:@user.email, subject: theSubject,body:theBody)
  puts "mail done"
  end

end
