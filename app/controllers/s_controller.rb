class SController < ApplicationController
  def new
    @student = Student.new #create new studnet
    @students = Student.all #get all students
  end
  def index 
    @student = Student.new
    @students = Student.all
    @answer = Answer.new
    @answers = Answer.all
  end

  def create
      user = Student.find_by(username: params[:username])
      if user.present?
        session[:user_id] = user.id
        redirect_to root_url, notice: "Welcome back, #{user.username}!"
      else
      #   flash[:alert] = "Invalid login credentials."
      #   render :new
      redirect_to s_path, alert: "Credentials not known."
      end
  end

  private
    def student_params
        params.require(:student).permit(:username, :password)
    end
end