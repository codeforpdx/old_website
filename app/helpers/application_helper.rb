module ApplicationHelper
  def login_helper(style='')
		if current_user.is_a?(GuestUser)
			(link_to "Sign Up", new_user_registration_path, class: style)+
	    	" ".html_safe +
	    	(link_to "Login", new_user_session_path, class: style)
	    else
	    	link_to "Logout", destroy_user_session_path, method: :delete, class: style
	    end
	end

  def copyright_generator
    HarkerViewTool::Renderer.copywrite 'Code for PDX, a Code for America Brigade', 'All Rights Reserved'
  end

  def about_items
    [
      "About",
    {
      url: about_path,
      title: "About Us",
      target: "_self",
      iclass: 'fas fa-users'
    },
    {
      url: projects_path,
      title: "Projects",
      target: "_self",
      iclass: 'fas fa-wrench'
    },
    {
      url: about_diversity_path,
      title: "Commitment to Diversity",
      target: "_self",
      iclass: 'fas fa-hands-helping'
    },
    # {
    #   url: about_vision_path,
    #   title: "Strategic Vision",
    #   target: "_self"
    # },
    {
      url: about_press_path,
      title: "Press",
      target: "_self",
      iclass: 'far fa-newspaper'
    },
    {
      url: about_conduct_path,
      title: "Code of Conduct",
      target: "_self",
      iclass: 'fas fa-bullhorn'
    },
    {
      url: about_principals_path,
      title: "Guiding Principals",
      target: "_self",
      iclass: 'fas fa-lightbulb'
    }
  ]
  end

  def connect_items
    [
      "Work With Us",
    {
      url: quickstart_path,
      title: "Quick Start Guide",
      target: "_self",
      iclass: 'fas fa-check'
    },
    {
      url: 'https://twitter.com/codeforpdx',
      title: 'Stay in the loop (Twitter)',
      target: '_blank',
      iclass: 'fab fa-twitter'
    },
    {
      url: 'https://codeforpdx.slack.com/',
      title: "Chat with us (Slack)",
      target: "_blank",
      iclass: 'fab fa-slack-hash'
    },
    {
      url: 'https://www.meetup.com/Code-for-PDX/',
      title: "Meet up with us (Meetup)",
      target: "_blank",
      iclass: 'fab fa-meetup'
    },
    {
      url: 'https://github.com/codeforpdx',
      title: "Code with us (GitHub)",
      target: "_blank",
      iclass: 'fab fa-github'
    }
  ]
  end

  def nav_items
		[
		{
			url: root_path,
			title: "Home",
      target: "_self",
      iclass: 'fas fa-home',
		},
		#{
		#	url: news_path,
		#	title: "News",
    # target: "_self"
		#},
    about_items,
    connect_items,
    {
      url: "https://secure.codeforamerica.org/page/contribute/default?brigade=Code%20for%20PDX",
      title: "Donate",
      target: "_self",
      iclass: 'fas fa-donate'
    }
    #{
    #  url: contact_path,
    #  title: "Contact",
    #  target: "_self",
    #  iclass: 'fas fa-paper-plane'
    #}
		#{
		#	url: '#',
		#	title: "Donate",
    #  target: "_self"
		#}
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
                html_output << "<a href='#{i[:url]}' class='dropdown-item #{active? i[:url]}' target=#{i[:target]}>"
                if i[:iclass]
                  html_output << "<i class='#{i[:iclass]}'></i>&nbsp;"
                end
                html_output << "#{i[:title]}</a>"
              end
            end
          html_output << "</div> </div>"
        else
          html_output << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>"
          if item[:iclass]
            html_output << "<i class='#{item[:iclass]}'></i>&nbsp;"
          end
          html_output << "#{item[:title]}</a></#{tag_type}>"
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
    js add_gritter(msg, title: "Code for PDX")
  end

  class CodeRayify < Redcarpet::Render::HTML
    def block_code(code, language)
      CodeRay.scan(code, language).div
    end
  end

  def markdown(text)
    coderayified = CodeRayify.new(filter_html: true, hard_wrap: true)

    options = {
      fenced_code_blocks: true,
      no_intra_emphasis: true,
      auto_link: true,
      lax_html_blocks: true,
      }

    markdown_to_html = Redcarpet::Markdown.new(coderayified, options)
    markdown_to_html.render(text).html_safe
  end

end
