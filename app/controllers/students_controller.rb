class StudentsController < ApplicationController
    def new 
        @student = Student.new #create new studnet
        @students = Student.all #get all students
        @teacher = Teacher.new
        @teachers = Teacher.all
        @question = Question.new
        @questions = Question.all
        @answer = Answer.new
        @answers = Answer.all
    end
    def create
        @student = Student.new(student_params)
        if @student.save #save into sql
            redirect_to root_url
        end
    end
    private
    def student_params
        params.require(:student).permit(:username, :password)
    end
end