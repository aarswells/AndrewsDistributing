class WhatsNewStory < ActiveRecord::Base

  acts_as_indexed :fields => [:title, :text]
  
  validates_presence_of :title
  validates_uniqueness_of :title
  
  belongs_to :thumbnail, :class_name => 'Image'
  belongs_to :image


end
