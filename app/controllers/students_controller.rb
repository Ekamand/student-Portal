class StudentsController < ApplicationController

	def index 


		@id = current_user.id
		@student = Unirest.get("https://sheltered-chamber-15774.herokuapp.com/api/v1/students/#{@id}.json").body
		
<<<<<<< HEAD
		@student = { 
				first_name: "Jody",
				last_name: "isCool",
				email: "123@123.com",
				phone_number: "12345",
				short_bio: "i'm super cool",
				linkedin: "lalalal",
				twitter: "lalala",
				personal_site: "boooooo.com",
				resume_url: "google.com",
				github_url: "google.com",
				photo: "http://dreamicus.com/data/face/face-02.jpg"
			}
=======
		# @student = { first_name: "Jody",
		# 		last_name: "isCool",
		# 		email: "123@123.com",
		# 		phone_number: "12345",
		# 		short_bio: "i'm super cool",
		# 		linkedin: "lalalal",
		# 		twitter: "lalala",
		# 		personal_site: "boooooo.com",
		# 		resume_url: "google.com",
		# 		github_url: "google.com",
		# 		photo: "http://dreamicus.com/data/face/face-02.jpg"
		# 	}
>>>>>>> 7a648b2647910cc127d9db0ae535fa61a3c2acc5
	end

	def new
	end

	def edit

<<<<<<< HEAD
		# api_url = #blank
		# @student = Unirest.get(api_url).body

		@student = { 
				first_name: "Jody",
				last_name: "isCool",
				email: "123@123.com",
				phone_number: "12345",
				short_bio: "i'm super cool",
				linkedin: "lalalal",
				twitter: "lalala",
				personal_site: "boooooo.com",
				resume_url: "google.com",
				github_url: "google.com",
				photo: "http://dreamicus.com/data/face/face-02.jpg"}
=======
		@id = current_user.id
		@student = Unirest.get("https://sheltered-chamber-15774.herokuapp.com/api/v1/students/#{@id}.json").body
>>>>>>> 7a648b2647910cc127d9db0ae535fa61a3c2acc5

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
