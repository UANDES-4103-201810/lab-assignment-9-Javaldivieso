class Movie < ApplicationRecord
	has_one:director
	has_many:categories
	belongs_to:address
	has_many:actors, through: :actors_movies
end
