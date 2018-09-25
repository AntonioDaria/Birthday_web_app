# frozen_string_literal: true

require 'sinatra/base'
require 'date'
require './lib/my_birthday'

class Birthday < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/happyb' do
    session[:name] = params[:name]
    session[:day] = params[:day]
    session[:month] = params[:month]
    redirect '/happyb'
  end

  get '/happyb' do
    @name = session[:name]
    @day = session[:day].to_i
    @month = session[:month].to_i
    @birthday = My_Birthday.new(Date.new(2018, @month, @day))
    @difference = @birthday.calculate(Date.new(2018, @month, @day))
    @isbirthday = @birthday.isbirthday
    erb :happyb
  end
end
