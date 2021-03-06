class User < ActiveRecord::Base
  belongs_to :account
  attr_accessible :account_id, :birthday, :description, :gender, :name
  
  validates :name, presence: true
end
