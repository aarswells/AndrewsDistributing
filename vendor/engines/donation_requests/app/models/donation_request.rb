class DonationRequest < ActiveRecord::Base

  acts_as_indexed :fields => [:event_region, :event_name, :event_location, :event_address, :expected_attendence, :event_contact_name, :event_contact_number, :event_contact_email, :event_concessionaire, :event_concessionaire_phone, :charity_501c3, :wine_spirits_served, :additional_comments]
  
  validates_presence_of :event_region
  validates_presence_of :wine_spirits_served

end
