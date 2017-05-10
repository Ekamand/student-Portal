class PagesController < ApplicationController

	def index
		all = Unirest.get
		Unirest.get(api_url).body

		@experience 
		@education
		@skills
		@capstone


	end
	
end
