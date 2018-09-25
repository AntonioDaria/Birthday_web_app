# frozen_string_literal: true

def sign_in(date)
  visit('/')
  fill_in :name, with: 'antonio'
  fill_in :day, with: date.strftime('%d')
  select(date.strftime('%B'), from: 'month')
  click_button 'GO'
end
