class StudentsController < ApplicationController
  def index

  end

  def register
  	@student = Student.new #khoi tao bien student
  end

  def sign_up
  	@student = Student.new(student_params)
  	if @student.save
  		redirect_to '/student'
  	else
  		render :register
    end
  end

  def login
    if request.post?
      do_login
    else
      render :login
    end

  end

  private
  def do_login
      if Student.self.login_by_email_and_password(params[:email],params[:password])
        session[:logined_email] = params[:email]
        flash[:notice] = 'login success'
        redirect_to '/students'
      else
        redirect_to '/login'
      end
  end
  def student_params
     params.require(:student).permit(:email, :password)
    #{:email => 'asdas@asdsa.com', :password => 'asdsad'}
  end
end