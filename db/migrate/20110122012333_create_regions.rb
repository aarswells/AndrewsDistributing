class CreateRegions < ActiveRecord::Migration

  def self.up
    create_table :regions do |t|
      t.string :title
      t.string :email
      t.integer :position

      t.timestamps
    end

    add_index :regions, :id

    load(Rails.root.join('db', 'seeds', 'regions.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "Regions"})

    Page.delete_all({:link_url => "/regions"})

    drop_table :regions
  end

end
