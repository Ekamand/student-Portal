class PagesController < ApplicationController

	def index
		all = Unirest.get

		@experience 
		@education
		@skills
		@capstone


	end
	
end
