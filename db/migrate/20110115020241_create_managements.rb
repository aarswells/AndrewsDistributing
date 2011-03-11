class CreateManagements < ActiveRecord::Migration

  def self.up
    create_table :managements do |t|
      t.string :title
      t.string :name
      t.integer :thumb_image_id
      t.integer :main_image_id
      t.text :bio
      t.integer :position

      t.timestamps
    end

    add_index :managements, :id

    load(Rails.root.join('db', 'seeds', 'managements.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "Managements"})

    Page.delete_all({:link_url => "/managements"})

    drop_table :managements
  end

end
