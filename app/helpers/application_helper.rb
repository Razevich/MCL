module ApplicationHelper
	
	def markdown(text)
    options = {
      filter_html:     true,
      hard_wrap:       true, 
      link_attributes: { rel: 'nofollow', target: "_blank" },
      space_after_headers: true, 
      fenced_code_blocks: true
    }

    extensions = {
      autolink:           true,
      superscript:        true,
      disable_indented_code_blocks: true
    }
	  if text.blank?
	    nil
	  else
  	  renderer = Redcarpet::Render::HTML.new(options) 
  	  @markdown ||= Redcarpet::Markdown.new(renderer, extensions = {}) 

	    @markdown.render(text).html_safe
	  end
  end

  def current_admin
    @current_admin ||= Admin.find_by_id(session[:admin_id]) if session[:admin_id]
  end
  
end
