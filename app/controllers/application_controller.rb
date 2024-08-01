class ApplicationController < ActionController::API

  wrap_parameters format: []

  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_response

  private
  
  def record_not_found_response
    render json: { error: "#{controller_name.classify} not found", message: "RESOURCE NOT FOUND" }, status: :not_found
  end
end
