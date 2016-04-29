class Comment < ActiveRecord::Base
	belongs_to :concert
	validates :name, presence: true
	validates :content, presence: true
end
