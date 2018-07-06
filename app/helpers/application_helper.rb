module ApplicationHelper
  def copyright_generator
    HarkerViewTool::Renderer.copywrite 'Code for PDX a Code for America Brigade', 'All Rights Reserved'
  end

  def nav_items
		[
		{
			url: root_path,
			title: "Home"
		},
		{
			url: news_path,
			title: "News"
		},
		{
			url: about_path,
			title: "About Me"
		},
		{
			url: contact_path,
			title: "Contact"
		}
	]
	end

  def active? path
		"active" if current_page? path
	end

  def nav_helper style, tag_type
    nav_links = ''

    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end

    nav_links.html_safe

  end

end
