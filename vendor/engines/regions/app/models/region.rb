class Region < ActiveRecord::Base

  acts_as_indexed :fields => [:title, :email]
  
  validates_presence_of :title
  validates_uniqueness_of :title
  


end
