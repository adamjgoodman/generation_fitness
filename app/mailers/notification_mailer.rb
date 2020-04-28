class NotificationMailer < ApplicationMailer
  default from: "memberservices@generationfitness.net"

  def contact_form(prospect)
    @prospect = prospect
    mail(to: @prospect.email,
    from: 'Member Services <memberservices@generationfitness.net>', 
    subject: "Thank you for contacting Generation Fitness",
    )
  end
end
