class SessionsController < ApplicationController

	def create

    student_hash = Unirest.post("https://sheltered-chamber-15774.herokuapp.com/api/v1/students.json",
      headers: {"Accept" => "application/json"}, 
      parameters: {email: params[:email],
          password: params[:password]
          }
      ).body

	 
    if student_hash
      session[:user_id] = student_hash.id
      flash[:success] = 'Successfully logged in!'
      redirect_to '/'
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/login'
    end

  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'Successfully logged out!'
    redirect_to '/login'
  end


end
