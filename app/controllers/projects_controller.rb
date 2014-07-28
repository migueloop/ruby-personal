class ProjectsController < ApplicationController
	def index
		@projects = Project.all
	end

	def create
    if(is_admin?) then
		  @project = Project.new(projects_params)
		  @project.save
		  redirect_to @project
    else
      flash[:danger] = 'Sorry, you must be administrator to perform this action'
      redirect_to 'new'
    end
  end
	
	def show
		@project = Project.find(params[:id])
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    flash[:success] = 'Project successfully deleted'
    redirect_to projects_path
  end

	private 
	def projects_params
		params.require(:project).permit(:title,:shortDesc,:longDesc,:imgName,:tag_names,:image)
  end


end
