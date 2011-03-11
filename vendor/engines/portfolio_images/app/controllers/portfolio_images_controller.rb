class PortfolioImagesController < ApplicationController

  before_filter :find_all_portfolio_images
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @portfolio_image in the line below:
    present(@page)
  end

  def show
    @portfolio_image = PortfolioImage.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @portfolio_image in the line below:
    present(@page)
  end

protected

  def find_all_portfolio_images
    @portfolio_images = PortfolioImage.find(:all, :order => "position ASC")
  end

  def find_page
    @page = Page.find_by_link_url("/portfolio_images")
  end

end
