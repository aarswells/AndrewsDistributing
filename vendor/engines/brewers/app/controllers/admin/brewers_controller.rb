class Admin::BrewersController < Admin::BaseController

  crudify :brewer,
          :title_attribute => 'company'


end
