class ApplicationController < ActionController::Base
  def that_function
    render plain: "This function"
  end
end
