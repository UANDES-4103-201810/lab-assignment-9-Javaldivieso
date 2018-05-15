class PersonsController < ApplicationController
	def new
    	   @actor = Actor.new
	   @director = Director.new
  	end
	def create
	end
end
