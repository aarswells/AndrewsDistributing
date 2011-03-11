User.find(:all).each do |user|
  user.plugins.create(:name => "for_brewers",
                      :position => (user.plugins.maximum(:position) || -1) +1)
end

page = Page.create(
  :title => "For Brewers",
  :link_url => "/for_brewers",
  :deletable => false,
  :position => ((Page.maximum(:position, :conditions => {:parent_id => nil}) || -1)+1),
  :menu_match => "^/for_brewers(\/|\/.+?|)$"
)
Page.default_parts.each do |default_page_part|
  page.parts.create(:title => default_page_part, :body => nil)
end
