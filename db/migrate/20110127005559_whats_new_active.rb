class WhatsNewActive < ActiveRecord::Migration
  def self.up
    add_column :whats_new_stories, :active, :boolean, :default => true
  end

  def self.down
    remove_column :whats_new_stories, :active
  end
end
