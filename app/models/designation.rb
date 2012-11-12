class Designation < ActiveRecord::Base
  belongs_to :noc
  attr_accessible :name
  
  validates :name,  :presence => true
  validates_uniqueness_of :name
end