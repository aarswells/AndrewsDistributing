class Teasers < ActiveRecord::Migration
  def self.up
    add_column :whats_new_stories, :teaser, :text
    add_column :managements, :teaser, :text
  end

  def self.down
    remove_column :whats_new_stories, :teaser
    remove_column :managements, :teaser
  end
end
