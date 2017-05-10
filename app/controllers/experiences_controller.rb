class ExperiencesController < ApplicationController

	def index 
		@id = 1
		@student = Unirest.get("https://sheltered-chamber-15774.herokuapp.com/api/v2/students/#{@id}.json").body

		@experiences = @student["experiences"]

	end

	def update
		
	end

	def edit

	end


end
