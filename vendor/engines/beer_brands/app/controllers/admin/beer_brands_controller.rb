class Admin::BeerBrandsController < Admin::BaseController

  crudify :beer_brand,
          :title_attribute => 'main_category'


end
