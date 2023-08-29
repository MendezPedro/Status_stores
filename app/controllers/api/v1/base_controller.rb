class Api::V1::BaseController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "store" && password == "test_report"
    end
  end

end
