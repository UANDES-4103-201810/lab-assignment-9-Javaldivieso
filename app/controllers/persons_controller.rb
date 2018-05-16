class PersonsController < ApplicationController
	def new
    	   @actor = Actor.new
	   @director = Director.new
  	end
	


	def create
	if params[:type] == 'actor'
		@actor = Actor.create(fist_name:params[:fist_name], last_name:params[:last_name], birth_date:params[:birth_name], description:params[:description])

		    respond_to do |format|
		      if @actor.save
			format.html { redirect_to @actor, notice: 'Actor was successfully created.' }
			format.json { render :show, status: :created, location: @actor }
		      else
			format.html { render :new }
			format.json { render json: @actor.errors, status: :unprocessable_entity }
		      end
		      end
	else
		@director = Director.create(fist_name:params[:fist_name],last_name:params[:last_name],birth_date:params[:birth_name],description:params[:description])

		    respond_to do |format|
		      if @director.save
			format.html { redirect_to @director, notice: 'Director was successfully created.' }
			format.json { render :show, status: :created, location: @director }
		      else
			format.html { render :new }
			format.json { render json: @director.errors, status: :unprocessable_entity }
		      end
    		      end
	end
	end
end
