class CreatePortfolioImages < ActiveRecord::Migration

  def self.up
    create_table :portfolio_images do |t|
      t.string :title
      t.integer :image_id
      t.integer :position

      t.timestamps
    end

    add_index :portfolio_images, :id

    load(Rails.root.join('db', 'seeds', 'portfolio_images.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "Portfolio Images"})

    Page.delete_all({:link_url => "/portfolio_images"})

    drop_table :portfolio_images
  end

end
