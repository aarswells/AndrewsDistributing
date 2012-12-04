class DonationRequest < ActiveRecord::Base
  acts_as_indexed :fields => [
    :event_region, :event_name, :event_location, :event_address,
    :expected_attendence, :event_contact_name, :event_contact_number,
    :event_contact_email, :event_concessionaire, :event_concessionaire_phone,
    :charity_501c3, :wine_spirits_served, :additional_comments]
  
  validates :event_region, :presence => true
  validates :event_name, :presence => true
  validates :event_location, :presence => true
  validates :event_date, :presence => true
  validates :event_address, :presence => true
  validates :expected_attendence, :presence => true
  validates :event_contact_name, :presence => true
  validates :event_contact_number, 
    :presence => true, 
    :format => { 
      :message => "must be a valid telephone number.",
      :with => /^[\(\)0-9\- \+\.]{10,20} *[extension\.]{0,9} *[0-9]{0,5}$/i
    }

  validates :event_contact_email, 
    :presence => true,
    :format => { :with => /\A[A-Z0-9_\.%\+\-\']+@(?:[A-Z0-9\-]+\.)+(?:[A-Z]{2,4}|museum|travel)\z/i }

  validates :event_concessionaire, :presence => true
  validates :event_concessionaire_phone, 
    :presence => true,
    :format => { 
      :message => "must be a valid telephone number.",
      :with => /^[\(\)0-9\- \+\.]{10,20} *[extension\.]{0,9} *[0-9]{0,5}$/i
    }

  validates :charity_501c3, :presence => true
  validates :wine_spirits_served, :presence => true
  validates :event_concessionaire, :presence => true
  validates :event_concessionaire_phone, :presence => true
end
