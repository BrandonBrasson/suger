class User < ActiveRecord::Base
  has_many :cupcakes
#  has_many :


  has_secure_password
  validates_presence_of :username
  validates :username, uniqueness: true

  def delete_cupcakes
    self.cupcakes.collect {|b| b.cupcake}
  end

  def add_delete(cupcake)
  Cupcake.create(user_id: self.id, cupcake_id: cupcake.id)
    save
  end

  def remove_delete(cupcake)
    cupcake = Cupcake.find_by(user_id: self.id,  cupcake_id: cupcake.id)
    cupcake.destroy
    save
  end


end
