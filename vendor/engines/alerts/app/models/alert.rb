class Alert < ActiveRecord::Base

  acts_as_indexed :fields => [:title, :message]
  
  validates_presence_of :title
  validates_uniqueness_of :title
  


end
