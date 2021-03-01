# frozen_string_literal: true

class LoginController < ApplicationController
  layout false
  require 'events_controller'

#  def index
#    @login_attempt = LoginAttempt.all
#  end

#  def new
#    @login_attempt = LoginAttempt.new
#  end

#  def edit
#    @login_attempt = LoginAttempt.find(params[:id])
#  end

#  def create
#    @login_attempt = LoginAttempt.new(
#      username: params[:LoginAttempt][:username],
#      password: params[:LoginAttempt][:password]
#    )
#    @login_attempt.save
#  end

  def validate
    #validate action
    @login_attempt = LoginAttempt.new(login_attempt_params)
    #puts "------HERE-------" + @login_attempt.username
    @username = "cat"
    @password = "dog"



    if @login_attempt.username == @username && @login_attempt.password == @password
      $adminBOOLEAN = 1
      redirect_to(controller: 'events', action: 'index')
    else
      redirect_to(controller: 'login', action: 'index')
    end
  end

  def login
    # render('login')
  end


#  def adminView
#
#    #render('adminView')
#  end


  private

  def login_attempt_params
    params.require(:LoginAttempt).permit(:username, :password)
  end
end

# to pass data from controller to view, use instance variables
# @variable
