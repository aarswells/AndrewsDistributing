class CreateEvents < ActiveRecord::Migration

  def self.up
    create_table :events do |t|
      t.string :title
      t.integer :image_id
      t.text :description
      t.integer :position

      t.timestamps
    end

    add_index :events, :id

    load(Rails.root.join('db', 'seeds', 'events.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "Events"})

    Page.delete_all({:link_url => "/events"})

    drop_table :events
  end

end
