class ContactMailer < ActionMailer::Base
 default to: "never.noes.best@gmail.com"

 def contact_email(name, email, message)
 @name = name
 @email = email
 @message = message

 mail(from: email, subject: 'Joshuahs Contact Form Message')
 end
end