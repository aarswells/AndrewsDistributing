class WhatsNewStoriesController < ApplicationController

  before_filter :find_all_whats_new_stories
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @whats_new_story in the line below:
    present(@page)
  end

  def show
    @whats_new_story = WhatsNewStory.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @whats_new_story in the line below:
    present(@page)
  end

protected

  def find_all_whats_new_stories
    @whats_new_stories = WhatsNewStory.find(:all, :order => "position ASC")
  end

  def find_page
    @page = Page.find_by_link_url("/whats_new_stories")
  end

end
