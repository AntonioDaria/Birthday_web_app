
feature "adding name" do
  scenario "checks that is the user's birthday" do
    visit('/')
    fill_in :name, with: 'antonio'
    fill_in :day, with: '21'
    select('September', :from => 'month')
    click_button 'GO'
    expect(page).to have_content 'Happy birthday antonio!!'
  end

  scenario "checks that the user's birthday is in 364 days" do
    visit('/')
    fill_in :name, with: 'antonio'
    fill_in :day, with: '20'
    select('September', :from => 'month')
    click_button 'GO'
    expect(page).to have_content 'antonio your birthday is in 364 days!!'
  end

  scenario "checks that the user's birthday is in 1 day" do
    visit('/')
    fill_in :name, with: 'antonio'
    fill_in :day, with: '22'
    select('September', :from => 'month')
    click_button 'GO'
    expect(page).to have_content 'antonio your birthday is in 1 days!!'
  end


end
