class AnswersController < ApplicationController
  before_action :authenticate_user!

  def new
    @answer = Answer.new
  end

  def create
    @answer = Question.find(params[:question_id]).answers.build(answer_params)
    if @answer.save
      redirect_to question_path(@answer.question)
    else
      render :edit
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:body).merge(user: current_user)
  end
end
