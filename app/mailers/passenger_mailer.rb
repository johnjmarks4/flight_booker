require 'letter_opener'

class PassengerMailer < ApplicationMailer
  default from: "flightbooker@gmail.com"

  def welcome_email(user)
    @user = user
    @url = "http://rocky-earth-72993.herokuapp.com/login"
    mail(to: @user.email, subject: "Welcome to my website")
  end
end