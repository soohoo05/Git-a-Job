class User < ApplicationRecord
  has_many :userjoblists
  has_many :jobs, through: :userjoblists
  validates :name, presence: true
  validates :address, presence: true
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format:{with: URI::MailTo::EMAIL_REGEXP}
  validates :phone, presence: true, format: {with: /(\d{3}-\d{3}-\d{4}|\d{10})/}

end
