class CreateDonationRequests < ActiveRecord::Migration

  def self.up
    create_table :donation_requests do |t|
      t.string :event_region
      t.string :event_name
      t.string :event_location
      t.text :event_address
      t.string :expected_attendence
      t.string :event_contact_name
      t.string :event_contact_number
      t.string :event_contact_email
      t.string :event_concessionaire
      t.string :event_concessionaire_phone
      t.string :charity_501c3
      t.string :wine_spirits_served
      t.text :additional_comments
      t.integer :position

      t.timestamps
    end

    add_index :donation_requests, :id

    load(Rails.root.join('db', 'seeds', 'donation_requests.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "Donation Requests"})

    Page.delete_all({:link_url => "/donation_requests"})

    drop_table :donation_requests
  end

end
