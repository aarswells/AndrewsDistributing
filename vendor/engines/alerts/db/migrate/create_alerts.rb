class CreateAlerts < ActiveRecord::Migration

  def self.up
    create_table :alerts do |t|
      t.string :title
      t.text :message
      t.datetime :start_date
      t.datetime :end_date
      t.integer :position

      t.timestamps
    end

    add_index :alerts, :id

    load(Rails.root.join('db', 'seeds', 'alerts.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "Alerts"})

    Page.delete_all({:link_url => "/alerts"})

    drop_table :alerts
  end

end
