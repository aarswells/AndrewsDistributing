class ManagementsController < ApplicationController

  before_filter :find_all_managements
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @management in the line below:
    present(@page)
  end

  def show
    @management = Management.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @management in the line below:
    present(@page)
  end

protected

  def find_all_managements
    @managements = Management.find(:all, :order => "position ASC")
  end

  def find_page
    @page = Page.find_by_link_url("/managements")
  end

end
