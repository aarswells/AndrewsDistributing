class CreateLogos < ActiveRecord::Migration

  def self.up
    create_table :logos do |t|
      t.string :title
      t.integer :image_id
      t.integer :position

      t.timestamps
    end

    add_index :logos, :id

    load(Rails.root.join('db', 'seeds', 'logos.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "Logos"})

    Page.delete_all({:link_url => "/logos"})

    drop_table :logos
  end

end
