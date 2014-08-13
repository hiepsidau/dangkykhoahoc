class StudentsController < ApplicationController
  def index

  end
  def register
  	@student = Student.new #khoi tao bien student
  end
  def sign_up
  	@student = Student.new(:email =>params[:email],:password => params[:password])
  	if @student.save
  		redirect 'student'
  	else
  		render :register
  	end
  	
  end
end
