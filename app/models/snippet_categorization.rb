class SnippetCategorization < ActiveRecord::Base
  belongs_to :snippet
  belongs_to :snippet_category
end
