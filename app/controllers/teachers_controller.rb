class TeachersController < ApplicationController
    def new 
        @teacher = Teacher.new #create new teacher
        @teachers = Teacher.all #get all teachers
    end
    def create
        @teacher = Teacher.new(teacher_params)
        if @teacher.save #save into sql
            redirect_to new_student_path
        end
    end
    private
    def teacher_params
        params.require(:teacher).permit(:username, :password)
    end
end
