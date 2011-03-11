class BeerBrand < ActiveRecord::Base

  acts_as_indexed :fields => [:main_category, :sub_category]
  
  validates_presence_of :main_category
  belongs_to :image


end
