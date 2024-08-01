class QuestionsController < ApplicationController
  def index
    render json: Question.all
  end

  def show
    render json: find_question
  end

  private

  def find_question
    Question.find(params[:id])
  end
end
