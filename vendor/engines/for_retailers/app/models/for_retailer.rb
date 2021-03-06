class ForRetailer < ActiveRecord::Base

  acts_as_indexed :fields => [:title, :text]
  
  validates_presence_of :title
  validates_uniqueness_of :title
  
  belongs_to :display_image, :class_name => 'Image'
  belongs_to :ogg_file, :class_name => 'Resource'
  belongs_to :m4v_file, :class_name => 'Resource'
  belongs_to :webm_file, :class_name => 'Resource'


end
