class CreateBrewers < ActiveRecord::Migration

  def self.up
    create_table :brewers do |t|
      t.integer :first_image_id
      t.integer :second_image_id
      t.string :company
      t.string :website_url
      t.integer :position

      t.timestamps
    end

    add_index :brewers, :id

    load(Rails.root.join('db', 'seeds', 'brewers.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "Brewers"})

    Page.delete_all({:link_url => "/brewers"})

    drop_table :brewers
  end

end
