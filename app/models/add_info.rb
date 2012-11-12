class AddInfo < ActiveRecord::Base
  belongs_to :noc
  attr_accessible :name
  
  validates :name,  :presence => true
end
