class Beer < ActiveRecord::Base
	belongs_to :brewery
	has_many :ratings

	def average_rating
		rating_sum = 0
		number_of_ratings = 0
		average_rating = 0.0

		self.ratings.each do |rating|
			rating_sum = rating_sum + rating.score
			number_of_ratings = number_of_ratings + 1
		end

		average_rating = rating_sum / number_of_ratings
		return average_rating
	end

	def average_rating2
		rating_sum = 0

		self.ratings.each do |rating|
			rating_sum = ratings.inject { |sum, rating| sum + rating.score }
		end
		puts rating_sum

	end

end
