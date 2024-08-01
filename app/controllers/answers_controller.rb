class AnswersController < ApplicationController
  def index
    render json: Answer.all
  end

  def show
    render json: find_answer
  end

  private

  def find_answer
    Answer.find(params[:id])
  end
end
