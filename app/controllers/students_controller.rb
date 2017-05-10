class StudentsController < ApplicationController

	def index 
		# api_url = #blank
		# @id = current_user.id
		# @student = Unirest.get(api_url).body
		
		@student = { first_name: "Jody",
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
	end

	def new
	end

	def edit

		# api_url = #blank
		# @student = Unirest.get(api_url).body

		@student = { first_name: "Jody",
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

	end

	def update
		#@id = params[:id]
		#api_url = #blank/#{@id}

		student = Unirest.patch(api_url,
			headers: {"Accept" => "application/json"},
			parameters: {
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
