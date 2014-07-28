class SnipetCategory < ActiveRecord::Base
  has_many :snippet_categorizations , :dependent => :destroy
  has_many :snippets, :through => :snippet_categorizations
end
