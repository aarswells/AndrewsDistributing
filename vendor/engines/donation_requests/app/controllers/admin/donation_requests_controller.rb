class Admin::DonationRequestsController < Admin::BaseController

  crudify :donation_request,
          :title_attribute => 'event_region', :order => "created_at DESC"

  def toggle
    @form_field = FormField.last()
  end
  
  def toggle_create
    @form_field = FormField.new(params[:form_field])

    respond_to do |format|
      if @form_field.save
           format.html { redirect_to "/refinery/donation_requests" }
           format.xml  { render :xml => @form_field, :status => :created, :location => @form_field }
      else
           format.html { redirect_to "/refinery/donation/toggle" }
           format.xml  { render :xml => @form_field.errors, :status => :unprocessable_entity }
      end
    end
  end
end
