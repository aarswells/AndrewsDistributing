class PagesController < ApplicationController

  def home
    @alerts = Alert.where(["start_date < ? AND end_date > ?", Time.now + 2.hours, Time.now + 2.hours]).order("start_date")
    error_404 unless (@page = Page.find_by_link_url("/", :include => [:parts, :slugs])).present?
  end

  # This action can be accessed normally, or as nested pages.
  # Assuming a page named "mission" that is a child of "about",
  # you can access the pages with the following URLs:
  #
  #   GET /pages/about
  #   GET /about
  #
  #   GET /pages/mission
  #   GET /about/mission
  #
  
  
  def show
    @alerts = Alert.where(["start_date < ? AND end_date > ?", Time.now, Time.now]).order("start_date")
    
    @page = if params[:path]
      Page.find(params[:path].split('/').last, :include => [:parts, :slugs])
    else
      Page.find(params[:id], :include => [:parts, :slugs])
    end

    if @page.try(:live?) or
       (refinery_user? and
        current_user.authorized_plugins.include?("refinery_pages"))
      # if the admin wants this to be a "placeholder" page which goes to its first child, go to that instead.
      if @page.skip_to_first_child
        first_live_child = @page.children.find_by_draft(false, :order => "position ASC")
        redirect_to first_live_child.url if first_live_child.present?
      end
      render_custom_page_template
    else
      error_404
    end
  end
  
  private
    def render_custom_page_template
      if Rails.root.join('app', 'views', 'pages', "#{@page.slug.name}.html.erb").exist?
        render @page.slug.name + ".html.erb"
      end
    end

end
