class Job < ApplicationRecord
  has_many :UserJobLists
  has_many :users, through: :UserJobLists
  
end
