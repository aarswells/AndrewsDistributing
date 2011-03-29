class DropTables < ActiveRecord::Migration
  def self.up
    UserPlugin.destroy_all({:name => "for_brewers"})

    Page.delete_all({:link_url => "/for_brewers"})

    drop_table :for_brewers
    
    UserPlugin.destroy_all({:name => "for_retailers"})

    Page.delete_all({:link_url => "/for_retailers"})

    drop_table :for_retailers
  end

  def self.down
  end
end
