class Prospect < ApplicationRecord
  validates :email, presence: true, 'valid_email_2/email': true
  validates :phone, phone: true
  after_create :contact_form_confirmation

  def contact_form_confirmation
    NotificationMailer.contact_form(self).deliver_now
  end

end