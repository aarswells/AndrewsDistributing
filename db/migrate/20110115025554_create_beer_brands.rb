class CreateBeerBrands < ActiveRecord::Migration

  def self.up
    create_table :beer_brands do |t|
      t.integer :image_id
      t.string :main_category
      t.string :sub_category
      t.integer :position

      t.timestamps
    end

    add_index :beer_brands, :id

    load(Rails.root.join('db', 'seeds', 'beer_brands.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "Beer Brands"})

    Page.delete_all({:link_url => "/beer_brands"})

    drop_table :beer_brands
  end

end
