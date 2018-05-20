class PersonsController < ApplicationController
	def new
    	   @actor = Actor.new
	   @director = Director.new
	   if params[:type] == 'actor'
		redirect_to  actors_path
	   if params[:type] == 'director'
		redirect_to  directors_path
	   else
		redirect_to  persons_new_path
	   end
	end
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
