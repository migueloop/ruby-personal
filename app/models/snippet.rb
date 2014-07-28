class Snippet < ActiveRecord::Base
  has_many :snippet_categorizations , :dependent => :destroy
  has_many :snippet_categories, :through => :snippet_categorizations
end
