String.prototype.replaceAll = function(search, replace) {
    if (replace === undefined) {
        return this.toString();
    }
    return this.split(search).join(replace);
}

function parse_snippets(text){
//Get snippet from data
$("#snippet").append("<div class='snippet_body'>");
if(text != null ){
	text = text.replaceAll('<','&lt'); 
	text = text.replaceAll('>','&gt'); 
text = text.replaceAll("[snippet]","<pre class='prettyprint'>");
text = text.replaceAll("[/snippet]","</pre>");
text = text.replaceAll("[note]","<div class='snippet_note'>"); 
text = text.replaceAll("[/note]","</div>");
}
$("#snippet").append(text);
$("#snippet").append("</pre>");
}