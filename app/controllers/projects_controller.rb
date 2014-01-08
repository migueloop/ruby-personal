class ProjectsController < ApplicationController
	def index
		@projects = Project.all
	end

	def create
		@project = Project.new(posts_params)
		@project.save
		redirect_to @project
	end

	
	def show
		@project = Project.find(params[:id])
	end

	private 
	def posts_params
		params.require(:project).permit(:title,:shortDesc,:longDesc,:imgName,:tag_names)
	end
end
