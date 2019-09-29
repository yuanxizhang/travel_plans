class ApplicationController < ActionController::API
	rescue_from ActiveRecord::RecordNotFound, with: :show_not_found_errors

  # All the information about the exception is in the parameter: exception
  def show_not_found_errors(exception)
 		render json: {error: exception.message}, status: :not_found
  end
end
