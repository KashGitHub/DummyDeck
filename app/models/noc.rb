class Noc < ActiveRecord::Base
  attr_accessible :code, :description
  
      validates :description,  		   :presence => true
  	  validates :code, 		   		   :presence => true,
  	  						   		   :numericality => true,
  	  						   		   :uniqueness => true,
                      		   		   :length => { :minimum => 4, :maximum => 4  }
   has_many :designations, 	   		   :dependent => :destroy
   has_many :titles, 		   		   :dependent => :destroy  
   has_many :duties, 		   		   :dependent => :destroy
   has_many :requirements, 	   		   :dependent => :destroy
   has_many :duty_right_branches, 	   :dependent => :destroy
   has_many :duty_left_branches, 	   :dependent => :destroy 
   has_many :add_infos, 	   		   :dependent => :destroy            		   
end