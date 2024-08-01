class SessionsController < ApplicationController
  def index
    render json: Session.all
  end

  def show
    render json: find_session
  end

  def all_answers
    render json: Session.find(params[:session_id]).answers
  end

  def matched_answers
    render json: Session.find(params[:session_id]).matched_answers.where("user_id = ?", params[:user_id])
  end

  def unmatched_answers
    render json: Session.unmatched_answers_for_user(params[:session_id], params[:user_id])
  end

  private

  def find_session
    Session.find(params[:id])
  end
end
