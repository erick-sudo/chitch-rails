class ParticipantsController < ApplicationController
  def index
    render json: Participant.all
  end

  def show
    render json: find_participant
  end

  private

  def find_participant
    Participant.find(params[:id])
  end
end
