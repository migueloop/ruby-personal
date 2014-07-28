module ApplicationHelper
	#Returns the full title on a per-page basics 
	def full_title (page_title)
		base_title = "<mruiz>"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end

	def load_css(*files)
  		content_for(:head) { stylesheet_link_tag(*files) }
	end

	def is_active?(page_name)
 		"active" if controller.controller_name == page_name or params[:action] == page_name
	end
end
