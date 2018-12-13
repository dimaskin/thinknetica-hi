class AnswersController < ApplicationController
  before_action :load_question, only: [:create]
  def new
    @answer = Answer.new
  end

  def create
    @answer = @question.answers.create(answer_param)
    if @answer.save
      redirect_to @question
    else
      render :new
    end

  end

  private
  def load_question
    @question = Question.find(params[:question_id])
  end

  def answer_param
    params.require(:answer).permit(:body)
  end

end
