class CreateWhatsNewStories < ActiveRecord::Migration

  def self.up
    create_table :whats_new_stories do |t|
      t.string :title
      t.integer :thumbnail_id
      t.integer :image_id
      t.text :text
      t.integer :position

      t.timestamps
    end

    add_index :whats_new_stories, :id

    load(Rails.root.join('db', 'seeds', 'whats_new_stories.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "Whats New Stories"})

    Page.delete_all({:link_url => "/whats_new_stories"})

    drop_table :whats_new_stories
  end

end
