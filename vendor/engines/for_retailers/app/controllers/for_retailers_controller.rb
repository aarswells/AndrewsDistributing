class ForRetailersController < ApplicationController

  before_filter :find_all_for_retailers
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @for_retailer in the line below:
    present(@page)
  end

  def show
    @for_retailer = ForRetailer.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @for_retailer in the line below:
    present(@page)
  end

protected

  def find_all_for_retailers
    @for_retailers = ForRetailer.find(:all, :order => "position ASC")
  end

  def find_page
    @page = Page.find_by_link_url("/for_retailers")
  end

end
