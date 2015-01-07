class Guitar < ActiveRecord::Base
  belongs_to :axe_master
  validates_presence_of :make, :model, :color

end
