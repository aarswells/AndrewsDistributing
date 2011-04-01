class DurationWebm < ActiveRecord::Migration
  def self.up
    add_column :for_brewers, :duration, :string
    add_column :for_retailers, :duration, :string
    add_column :for_brewers, :webm_file_id, :integer
    add_column :for_retailers, :webm_file_id, :integer
  end

  def self.down
    remove_column :for_brewers, :duration
    remove_column :for_retailers, :duration
    remove_column :for_brewers, :webm_file_id
    remove_column :for_retailers, :webm_file_id
  end
end
