class Project < ActiveRecord::Base
	validates :title, presence: true
	has_many :categorizations , :dependent => :destroy
	has_many :tags, :through => :categorizations
	attr_writer :tag_names
	after_save :assign_tags

	def tag_names
    @tag_names || tags.map(&:name).join(',')
  	end

	private 

	def assign_tags
		if @tag_names
			self.tags = @tag_names.split(",").map do |name|
				Tag.find_or_create_by_name(name)
			end
		end	
	end
end
