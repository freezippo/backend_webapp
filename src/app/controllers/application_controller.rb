class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_request
  attr_reader :current_user

  private

  def authenticate_request
    @current_user = AuthorizeApiRequest.call(request.headers).result
    render json: { status: 0, msg: 'not authorized' }, status: 401 unless @current_user
  end

end