class AnswersController < ApplicationController
  before_action :authenticate_user!
  before_action :load_question, only: [:create]

  def new
    @answer = Answer.new
  end

  def create
    @answer = @question.answers.new(answer_param)
    @answer.author = current_user
    if @answer.save
      redirect_to @question, notice: 'Your answer successfully created.'
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
