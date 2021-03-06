class Concert < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	 validates :artist, presence: true
	 validates :venue, presence: true 
	 validates :city, presence: true 
	 validates :date, presence: true  
	 validates :price, presence: true 
	 validates :description, presence: true
end
