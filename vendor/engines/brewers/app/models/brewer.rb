class Brewer < ActiveRecord::Base

  acts_as_indexed :fields => [:company, :website_url]
  
  validates_presence_of :company
  validates_uniqueness_of :company
  
  belongs_to :first_image, :class_name => 'Image'
  belongs_to :second_image, :class_name => 'Image'


end
