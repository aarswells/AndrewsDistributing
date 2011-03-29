class ForVideos < ActiveRecord::Migration
  def self.up
    add_column :for_brewers, :ogg_file, :integer
    add_column :for_retailers, :ogg_file, :integer
    add_column :for_brewers, :m4v_file, :integer
    add_column :for_retailers, :m4v_file, :integer
    add_column :for_brewers, :display_image, :integer
    add_column :for_retailers, :display_image, :integer
    remove_column :for_brewers, :vimeo_url
    remove_column :for_retailers, :vimeo_url
  end

  def self.down
    remove_column :for_brewers, :ogg_file
    remove_column :for_retailers, :ogg_file
    remove_column :for_brewers, :m4v_file
    remove_column :for_retailers, :m4v_file
    remove_column :for_brewers, :display_image
    remove_column :for_retailers, :display_image
    add_column :for_brewers, :vimeo_url
    add_column :for_retailers, :vimeo_url
  end
end
