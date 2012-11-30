class DonationMailer < ActionMailer::Base
  default :from => "DonationRequest@andrewsdistributing.com"
  
  def request_email(donation_request)
    @donation = donation_request
    
    region = Region.first(:conditions => {:title => @donation.event_region})
    
    mail(:to => region.email, :subject => "Donation Request Form Entry" )
  end

  def thank_you_for_submission(donation_request)
    mail(:to => donation_request.event_contact_email, :subject => "Thank you for your submission")
  end
end
