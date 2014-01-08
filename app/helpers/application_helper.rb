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
end
