class EducationsController < ApplicationController

	def index 
	end

	def update
  end
  
	def index 
		@id = 1
		@student = Unirest.get("https://sheltered-chamber-15774.herokuapp.com/api/v2/students/#{@id}.json").body
		@educations = @student["educations"]
	end

	def edit
		@id = 1
		@student = Unirest.get("https://sheltered-chamber-15774.herokuapp.com/api/v2/students/#{@id}.json").body
		@educations = @student["educations"]
	end

end
