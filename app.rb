require 'sinatra/base'
require 'date'

class Birthday < Sinatra::Base

enable :sessions

  get '/' do
    erb :index
  end

  post '/happyb' do
    session[:name] = (params[:name])
    session[:day] = (params[:day])
    session[:month] = (params[:month])
    redirect '/happyb'
  end

  get '/happyb' do
    @name = session[:name]
    @day = session[:day].to_i
    @month = session[:month].to_i
    calculate(Date.new(2018,@month,@day))
    erb :happyb
  end

  def calculate(end_date)
    today = Date.today
    end_date = end_date
    difference = (end_date - today).to_i
    if difference < 0
    difference += 365
    end
    difference
  end
end
