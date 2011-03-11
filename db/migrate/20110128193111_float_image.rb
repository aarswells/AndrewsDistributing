class FloatImage < ActiveRecord::Migration
  def self.up
    add_column :whats_new_stories, :float, :boolean, :default => true
  end

  def self.down
    remove_column :whats_new_stories, :float
  end
end
