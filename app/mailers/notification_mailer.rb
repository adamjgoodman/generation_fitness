class NotificationMailer < ApplicationMailer
  default from: "memberservices@mygenerationfitness.com"

  def contact_form(prospect)
    @prospect = prospect
    mail(to: @prospect.email,
    from: 'Member Services <memberservices@mygenerationfitness.com>', 
    subject: "Thank you for contacting Generation Fitness",
    )
  end
end
