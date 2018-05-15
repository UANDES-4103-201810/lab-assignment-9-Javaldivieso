class ActorMovie < ApplicationRecord
	belongs_to:Actors
	belongs_to:movies
end
