class PasswordsController < ApplicationController
  def check
    if params[:password] == "hello"
      answer = true
    else
      answer = false
    end

    render :json => { return: answer }
    # render layout: "test", template: "passwords/check.json.erb"
  end
end
