class Management < ActiveRecord::Base

  acts_as_indexed :fields => [:title, :name, :bio]
  
  validates_presence_of :title
  validates_uniqueness_of :title
  
  belongs_to :thumb_image, :class_name => 'Image'
  belongs_to :main_image, :class_name => 'Image'


end
