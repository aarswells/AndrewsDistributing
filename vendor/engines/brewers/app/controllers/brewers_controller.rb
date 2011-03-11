class BrewersController < ApplicationController

  before_filter :find_all_brewers
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @brewer in the line below:
    present(@page)
  end

  def show
    @brewer = Brewer.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @brewer in the line below:
    present(@page)
  end

protected

  def find_all_brewers
    @brewers = Brewer.find(:all, :order => "position ASC")
  end

  def find_page
    @page = Page.find_by_link_url("/brewers")
  end

end
