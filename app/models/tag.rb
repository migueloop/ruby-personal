class Tag < ActiveRecord::Base
	has_many :categorizations , :dependent => :destroy
	has_many :projects, :through => :categorizations
end
