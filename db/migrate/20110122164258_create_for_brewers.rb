class CreateForBrewers < ActiveRecord::Migration

  def self.up
    create_table :for_brewers do |t|
      t.string :title
      t.integer :ogg_file_id
      t.integer :m4v_file_id
      t.integer :display_image_id
      t.text :text
      t.integer :position

      t.timestamps
    end

    add_index :for_brewers, :id

    load(Rails.root.join('db', 'seeds', 'for_brewers.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "For Brewers"})

    Page.delete_all({:link_url => "/for_brewers"})

    drop_table :for_brewers
  end

end
