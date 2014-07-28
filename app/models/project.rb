class Project < ActiveRecord::Base
	validates :title, presence: true
	has_many :categorizations , :dependent => :destroy
	has_many :tags, :through => :categorizations
	attr_writer :tag_names
	after_save :assign_tags


	has_attached_file :image, :styles => {  :large => "550x550>",  :medium => "350x350>", :thumb => "200x200>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

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
