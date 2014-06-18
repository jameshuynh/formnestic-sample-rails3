class Account < ActiveRecord::Base
  attr_accessible :title, :body, :users_attributes
  
  has_many :users
  
  accepts_nested_attributes_for :users
end
