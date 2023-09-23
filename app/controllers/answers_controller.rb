class AnswersController < ApplicationController
  def new
    @answer = Answer.new
    @answers = Answer.all
  end

  def create
    @answer = Answer.new(answer_params)
    
    if @answer.save 
      redirect_to new_student_path # Redirect to the desired page after successful save
    else
      flash[:error] = @answer.errors.full_messages.join(", ") # Store validation errors in flash
      render :new # Render the new view with validation errors
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:response, :student_id, :question_id)
  end

 
end