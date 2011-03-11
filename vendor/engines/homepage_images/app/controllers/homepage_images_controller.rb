class HomepageImagesController < ApplicationController

  before_filter :find_all_homepage_images
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @homepage_image in the line below:
    present(@page)
  end

  def show
    @homepage_image = HomepageImage.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @homepage_image in the line below:
    present(@page)
  end

protected

  def find_all_homepage_images
    @homepage_images = HomepageImage.find(:all, :order => "position ASC")
  end

  def find_page
    @page = Page.find_by_link_url("/homepage_images")
  end

end
