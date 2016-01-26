class Movie < ActiveRecord::Base
	belongs_to:genre, dependent: :destroy #referential integrity
	
	validates :title, :released_on, presence: true
	
end
