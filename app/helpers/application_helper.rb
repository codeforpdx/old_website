module ApplicationHelper
  def copyright_generator
    HarkerViewTool::Renderer.copywrite 'Code for PDX, a Code for America Brigade', 'All Rights Reserved'
  end

  def about_items
    [
      "About",
    {
      url: about_path,
      title: "About Us",
      target: "_self"
    },
    {
      url: about_projects_path,
      title: "Projects",
      target: "_self"
    },
    {
      url: about_diversity_path,
      title: "Commitment to Diversity",
      target: "_self"
    },
    # {
    #   url: about_vision_path,
    #   title: "Strategic Vision",
    #   target: "_self"
    # },
    {
      url: about_press_path,
      title: "Press",
      target: "_self"
    },
    {
      url: about_conduct_path,
      title: "Code of Conduct",
      target: "_self"
    },
    {
      url: about_principals_path,
      title: "Guiding Principals",
      target: "_self"
    }
  ]
  end

  def connect_items
    [
      "Work With Us",
    {
      url: quickstart_path,
      title: "Quick Start Guide",
      target: "_self"
    },
    {
      url: 'https://github.com/codeforpdx',
      title: "GitHub",
      target: "_blank"
    },
    {
      url: 'https://codeforpdx.slack.com/',
      title: "Chat with us!(Slack)",
      target: "_blank"
    },
    {
      url: 'https://www.meetup.com/Code-for-PDX/',
      title: "Come to a Meeting! (Meetup)",
      target: "_blank"
    }
  ]
  end

  def nav_items
		[
		{
			url: root_path,
			title: "Home",
      target: "_self"
		},
		{
			url: news_path,
			title: "News",
      target: "_self"
		},
    about_items,
    connect_items,
    {
      url: blogs_path,
      title: "Blog",
      target: "_self"
    },
    {
      url: 'https://www.twitter.com/codeforpdx',
      title: "Twitter",
      target: "_blank"
    },
		{
			url: '#',
			title: "Donate",
      target: "_self"
		}
  ]
	end

  def active? path
	  "active" if current_page? path
	end

  def about_helper style, tag_type
    about_links = ""
    
    about_items.each do |item|
      about_links << "<#{tag_type}"
    end
    
    about_links.html_safe
  end

  def array_to_html input_array, style, tag_type
    # TODO: Refactor this ugly ugly mess
    html_output = ''
      input_array.each do |item|
        if item.instance_of? Array
          html_output << "<div class='btn-group'>"
            item.each do |i|
              if i.instance_of? String
                html_output << "<p class='#{style} dropdown-toggle' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>#{item[0]}</p>
                <div class='dropdown-menu'>"
              else
                html_output << "<a href='#{i[:url]}' class='dropdown-item #{active? i[:url]}' target=#{i[:target]}>#{i[:title]}</a>"
              end
            end
          html_output << "</div> </div>"
        else
          html_output << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
        end
      end
    html_output.html_safe
  end

  def nav_helper style, tag_type
    array_to_html nav_items, style, tag_type
  end

  def alerts
  alert = ( flash[:alert] || flash[:error] || flash[:notice] )
    if alert
      alert_generator alert
    end
  end

  def alert_generator msg
    js add_gritter(msg, title: "Hugh Harker Portfolio")
  end

end
