require 'date'
today = Date.today
yesterday = Date.today - 1
tomorrow = Date.today + 1


feature "adding user's details'" do
  context "when it is the user's birthday" do
    scenario "checks that is the user's birthday" do
      visit('/')
      fill_in :name, with: 'antonio'
      fill_in :day, with: today.strftime("%d")
      select(today.strftime("%B"), :from => 'month')
      click_button 'GO'
      expect(page).to have_content 'Happy birthday antonio!!'
    end
 end

context "when the birthday is in 364 days" do
  scenario "checks that the user's birthday is in 364 days" do
    visit('/')
    fill_in :name, with: 'antonio'
    fill_in :day, with: yesterday.strftime("%d")
    select(yesterday.strftime("%B"), :from => 'month')
    click_button 'GO'
    expect(page).to have_content 'antonio your birthday is in 364 days!!'
  end
end

context "when  ther is 1 day left to the user's birthday" do
  scenario "checks that the user's birthday is in 1 day" do
    visit('/')
    fill_in :name, with: 'antonio'
    fill_in :day, with: tomorrow.strftime("%d")
    select(tomorrow.strftime("%B"), :from => 'month')
    click_button 'GO'
    expect(page).to have_content 'antonio your birthday is in 1 days!!'
  end
 end
end
