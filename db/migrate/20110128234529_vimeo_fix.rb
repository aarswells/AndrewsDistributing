class VimeoFix < ActiveRecord::Migration
  def self.up
    remove_column :for_brewers, :vimeo
    remove_column :for_retailers, :vimeo
    add_column :for_brewers, :vimeo_url, :string
    add_column :for_retailers, :vimeo_url, :string
  end

  def self.down
    add_column :for_brewers, :vimeo, :text
    add_column :for_retailers, :vimeo, :text
    remove_column :for_brewers, :vimeo_url
    remove_column :for_retailers, :vimeo_url
  end
end
