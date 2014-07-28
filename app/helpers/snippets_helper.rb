module SnippetsHelper
  def parse_snippet(snippet)
    snippet.gsub!("[snippet]", "<pre class='prettyprint'>")
    snippet.gsub!("[/snippet]","</pre>")
    snippet.gsub!("[note]","<div class='snippet_note'>")
    snippet.gsub!("[/note]","</div>")
    truncate(snippet, :length => 200, :separator => '...')
    return snippet
  end
end
