class DonationRequestsController < ApplicationController

  before_filter :find_all_donation_requests
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @donation_request in the line below:
    present(@page)
    @donation_request = DonationRequest.new
  end

def create
  @donation_request = DonationRequest.new(params[:donation_request])

  respond_to do |format|
    if @donation_request.save
         DonationMailer.request_email(@donation_request).deliver
         format.html { render :action => "index" }
         format.xml  { render :xml => @donation_request, :status => :created, :location => @donation_request }
    else
         format.html { render :action => "index" }
         format.xml  { render :xml => @donation_request.errors, :status => :unprocessable_entity }
    end
  end
end


protected

  def find_all_donation_requests
    @donation_requests = DonationRequest.find(:all, :order => "position DESC")
  end

  def find_page
    @page = Page.find_by_link_url("/donation_requests")
  end

end
