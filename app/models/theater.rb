class Theater < ActiveRecord::Base
  attr_accessible :address, :city, :email, :name, :tel, :weibo
  
  has_many :plays
end
