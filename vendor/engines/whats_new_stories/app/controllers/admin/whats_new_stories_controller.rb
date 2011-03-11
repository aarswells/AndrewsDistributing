class Admin::WhatsNewStoriesController < Admin::BaseController

  crudify :whats_new_story, :order => "position ASC"

end
