class RegionsController < ApplicationController

  before_filter :find_all_regions
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @region in the line below:
    present(@page)
  end

  def show
    @region = Region.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @region in the line below:
    present(@page)
  end

protected

  def find_all_regions
    @regions = Region.find(:all, :order => "position ASC")
  end

  def find_page
    @page = Page.find_by_link_url("/regions")
  end

end
