class Movie < ApplicationRecord
	has_one:Director
	has_many:categories
	belongs_to:address
end
