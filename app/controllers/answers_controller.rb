class AnswersController < ApplicationController
  def new
    @answer = Answer.new
    @answers = Answer.all
  end

  def create
    @answer = Answer.new(answer_params)
    
    if @answer.save 
      redirect_to student_index_path # Redirect to the desired page after successful save
    else
      flash[:error] = @answer.errors.full_messages.join(", ") # Store validation errors in flash
      render :new # Render the new view with validation errors
    end
  end

  def create_answer
    @answer = Answer.new(answer_params)

    if @answer.save
      flash[:notice] = "Answer was successfully created."
      redirect_to root_path # Adjust the redirection as needed
    else
      flash.now[:alert] = "Failed to create the answer."
      render 'questions/index' # Adjust the rendering as needed
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:response, :student_id, :question_id)
  end
  

 
end