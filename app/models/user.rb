class User < ApplicationRecord
  has_many :UserJobLists
  has_many :jobs, through: :UserJobLists
  validates :name, presence:true
  validates :address, presence:true
  validates :username, presence:true, uniqueness:true
  validates :email, presence:true, uniqueness:true
  validates :phone, presence:true

end
