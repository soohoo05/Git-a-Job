class Job < ApplicationRecord
  has_many :userjoblists
  has_many :users, through: :userjoblists

end
