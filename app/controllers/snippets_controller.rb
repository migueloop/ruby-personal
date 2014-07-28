class SnippetsController < ApplicationController
  def index
    @snippets = Snippet.all
  end

  def create
    if(is_admin?) then
      @snippet = Snippet.new(snippets_params)
      @snippet.save
      redirect_to snippets_path
    else
      flash[:danger] = 'Sorry, you must be administrator to perform this action'
      redirect_to new_snippet_path
    end
  end

  def show
    @snippet = Snippet.find(params[:id])
  end


  private
  def snippets_params
    params.require(:snippet).permit(:title,:body)
  end
end
