class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  # GET /view_questions
  def index
    @questions = Question.all
  end

  def show
    @answer = AnswerOption.where(question_id: @question.id)
  end

  def answer_questions
    @questions = Question.all
  end 

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_question
    @question = Question.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def question_params
    params.require(:question).permit(:name)
  end
end
