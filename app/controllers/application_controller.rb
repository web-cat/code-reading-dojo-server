class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken

  def show
    render template: "pages/#home"
  end
end
