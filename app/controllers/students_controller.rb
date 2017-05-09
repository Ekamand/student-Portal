class StudentsController < ApplicationController

	def index 
		api_url = #blank
		@student = Unirest.get(api_url).body
	end

	def new
	end

	def edit
		api_url = #blank
		@student = Unirest.get(api_url).body
	end

	def update
		api_url = #blank
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
