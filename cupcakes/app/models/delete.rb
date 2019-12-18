class Delete < ActiveRecord::Base
  belongs_to :user
  belongs_to :cupcake
end
