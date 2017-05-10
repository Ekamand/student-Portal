class StudentsController < ApplicationController

	def index 

		@id = current_user.id
		@student = Unirest.get("https://sheltered-chamber-15774.herokuapp.com/api/v1/students/#{@id}.json").body
		
	end

	def new
	end

	def edit

		@id = current_user.id
		@student = Unirest.get("https://sheltered-chamber-15774.herokuapp.com/api/v1/students/#{@id}.json").body


	end

	def update
		@id = current_user.id
		api_url = "https://sheltered-chamber-15774.herokuapp.com/api/v1/students/#{@id}.json"
		@student = Unirest.get(api_url).body

		student = Unirest.patch(api_url,
			headers: {"Accept" => "application/json"},
			parameters: {
				first_name: @student.first_name
				last_name: @student.last_name
				email: params[:email]
				phone_number: params[:phone_number],
				short_bio: params[:short_bio],
				linkedin: params[:linkedin],
				twitter: params[:twitter],
				personal_site: params[:personal_site],
				resume_url: params[:resume_url],
				github_url: params[:github_url],
				photo: params[:photo]
				}
			).body
		end
		
end
