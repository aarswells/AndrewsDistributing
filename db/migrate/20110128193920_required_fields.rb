class RequiredFields < ActiveRecord::Migration
  def self.up
    create_table :form_fields do |t|
      
      t.boolean :event_name
      t.boolean :event_location
      t.boolean :event_address
      t.boolean :expected_attendence
      t.boolean :event_contact_name
      t.boolean :event_contact_number
      t.boolean :event_concessionaire
      t.boolean :event_concessionaire_phone
      t.boolean :charity_501c3
      t.boolean :event_contact_email
      t.boolean :additional_comments

    end
    
  end

  def self.down
    drop_table :form_fields
  end
end
