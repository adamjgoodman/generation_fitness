class Prospect < ApplicationRecord
  validates :email, presence: true, 'valid_email_2/email': true
  validates :phone, phone: true
end