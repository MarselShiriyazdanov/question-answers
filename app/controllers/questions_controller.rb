class QuestionsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    if  params[:term].present?
      @questions = search_for_questions
    else
      @questions = Question.all
    end
  end

  def new
    @question = Question.new
  end

  def create
    @question = current_user.questions.build(question_params)
    if @question.save
      redirect_to questions_path
    else
      render :edit
    end
  end

  def show
    question = Question.includes(:answers).find(params[:id])
    @question = QuestionDecorator.decorate(question)
    @answers = AnswerDecorator.decorate(question.answers)
  end

  private

  def search_for_questions
    term = "%#{params[:term]}%"
    Question.where('title LIKE ? OR body LIKE ?', term, term)
  end

  def question_params
    params.require(:question).permit(:title, :body)
  end
end
