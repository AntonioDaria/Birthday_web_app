class My_Birthday

  attr_reader :end_date

  def initialize(end_date)
  @end_date = end_date
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
