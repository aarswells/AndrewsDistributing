class BeerBrandsController < ApplicationController

  before_filter :find_all_beer_brands
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @beer_brand in the line below:
    present(@page)
  end

  def show
    @beer_brand = BeerBrand.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @beer_brand in the line below:
    present(@page)
  end

protected

  def find_all_beer_brands
    @beer_brands = BeerBrand.find(:all, :order => "main_category ASC, position ASC")
  end

  def find_page
    @page = Page.find_by_link_url("/beer_brands")
  end

end
