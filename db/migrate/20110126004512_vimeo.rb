class Vimeo < ActiveRecord::Migration
  def self.up
    add_column :for_brewers, :vimeo, :text
    add_column :for_retailers, :vimeo, :text
    remove_column :for_brewers, :ogg_file
    remove_column :for_retailers, :ogg_file
    remove_column :for_brewers, :m4v_file
    remove_column :for_retailers, :m4v_file
    remove_column :for_brewers, :display_image
    remove_column :for_retailers, :display_image
    
  end

  def self.down
    remove_column :for_brewers, :vimeo
    remove_column :for_retailers, :vimeo
  end
end
