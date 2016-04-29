class ConcertsController < ApplicationController

	def index
		@concerts = Concert.all
		@today_concerts = Concert.where(date: Date.today.beginning_of_day ..Date.today.end_of_day)
		@month_concerts = Concert.where(date: Date.today.beginning_of_month ..Date.today.end_of_month)
	end

	def show
		@concert = Concert.find_by_id(params[:concert][:id])
	end

	def create
	    concert = Concert.new(concert_params)
		if concert.save
			flash[:notice] = "Gig created successfully" 
			
		else
			flash[:alert] = "Error creating Gig, Please Try Again!!!!"
		end
		redirect_to("/")
	end

	private
	def concert_params
		params.require(:concert).permit(:artist, :venue, :city, :date, :price, :description)
	end
end
