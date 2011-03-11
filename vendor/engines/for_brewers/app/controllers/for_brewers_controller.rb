class ForBrewersController < ApplicationController

  before_filter :find_all_for_brewers
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @for_brewer in the line below:
    present(@page)
  end

  def show
    @for_brewer = ForBrewer.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @for_brewer in the line below:
    present(@page)
  end

protected

  def find_all_for_brewers
    @for_brewers = ForBrewer.find(:all, :order => "position ASC")
  end

  def find_page
    @page = Page.find_by_link_url("/for_brewers")
  end

end
