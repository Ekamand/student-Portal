class SkillsController < ApplicationController

	def index 
		@id = 1
		@student = Unirest.get("https://sheltered-chamber-15774.herokuapp.com/api/v2/students/#{@id}.json").body
		@skills = @student["skills"]
	end

	def edit
		@id = 1
		@student = Unirest.get("https://sheltered-chamber-15774.herokuapp.com/api/v2/students/#{@id}.json").body
		@skills = @student["skills"]
	end

end
