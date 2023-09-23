class QuestionsController < ApplicationController
  def new
      @question = Question.new
      @questions = Question.all
      @answers = Answer.all
  end

  def create
      @question = Question.new(question_params)
      if @question.save 
          redirect_to new_student_path #This will redirect you to whateber page you want to go to
      end
  end

  def show
      @question = Question.find(params[:id])
      @answers = Answer.where(question_id_id: @question.id)

      if !@answers.empty?
          @answers.each(&:destroy)
      end
      
      if @question.destroy
        redirect_to new_student_path, notice: 'Question was successfully deleted.'
      else
        redirect_to new_student_path, alert: 'Failed to delete the question.'
      end
  end 

  def delete
      @question = Question.find(params[:id])
      if @question.destroy
        redirect_to new_student_path, notice: 'Question was successfully deleted.'
      else
        redirect_to new_student_path, alert: 'Failed to delete the question.'
      end
  end

  private
  def question_params
      params.require(:question).permit(:QuestionText, :QuestionAnswer)
  end
end
