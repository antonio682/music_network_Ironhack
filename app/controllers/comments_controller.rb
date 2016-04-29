class CommentsController < ApplicationController

	def create
		concert = Concert.find_by(id: params[:concert][:id])

		if concert.comments.new(name: params[:comment][:name], content: params[:comment][:content]).save
			flash[:notice] = "Comment created successfully" 
			
		else
			flash[:alert] = "Error creating comment, Please Try Again!!!!"
		end
		redirect_to("/")
	end
end
