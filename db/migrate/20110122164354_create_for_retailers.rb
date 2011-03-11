class CreateForRetailers < ActiveRecord::Migration

  def self.up
    create_table :for_retailers do |t|
      t.string :title
      t.integer :ogg_file_id
      t.integer :m4v_file_id
      t.integer :display_image_id
      t.text :text
      t.integer :position

      t.timestamps
    end

    add_index :for_retailers, :id

    load(Rails.root.join('db', 'seeds', 'for_retailers.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "For Retailers"})

    Page.delete_all({:link_url => "/for_retailers"})

    drop_table :for_retailers
  end

end
