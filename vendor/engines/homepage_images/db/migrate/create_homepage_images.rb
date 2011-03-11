class CreateHomepageImages < ActiveRecord::Migration

  def self.up
    create_table :homepage_images do |t|
      t.string :title
      t.integer :image_id
      t.integer :position

      t.timestamps
    end

    add_index :homepage_images, :id

    load(Rails.root.join('db', 'seeds', 'homepage_images.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "Homepage Images"})

    Page.delete_all({:link_url => "/homepage_images"})

    drop_table :homepage_images
  end

end
