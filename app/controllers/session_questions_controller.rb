class SessionQuestionsController < ApplicationController
  def index
    render json: SessionQuestion.all
  end

  def show
    render json: find_session_question
  end

  private

  def find_session_question
    SessionQuestion.find(params[:id])
  end
end
