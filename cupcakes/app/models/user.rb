class User < ActiveRecord::Base
  has_many :cupcakes



  has_secure_password
  

end
