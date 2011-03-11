User.find(:all).each do |user|
  user.plugins.create(:name => "for_retailers",
                      :position => (user.plugins.maximum(:position) || -1) +1)
end

page = Page.create(
  :title => "For Retailers",
  :link_url => "/for_retailers",
  :deletable => false,
  :position => ((Page.maximum(:position, :conditions => {:parent_id => nil}) || -1)+1),
  :menu_match => "^/for_retailers(\/|\/.+?|)$"
)
Page.default_parts.each do |default_page_part|
  page.parts.create(:title => default_page_part, :body => nil)
end
