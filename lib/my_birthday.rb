# frozen_string_literal: true

class My_Birthday
  attr_reader :end_date

  def initialize(end_date)
    @end_date = end_date
  end

  def calculate(end_date)
    today = Date.today
    # end_date = end_date
    difference = (end_date - today).to_i
    difference += 365 if difference < 0
    difference
  end
end
