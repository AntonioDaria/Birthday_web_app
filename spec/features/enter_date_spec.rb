require 'date'

today = Date.today
yesterday = Date.today - 1
tomorrow = Date.today + 1

feature "adding user's details'" do
  context "when it is the user's birthday" do
    scenario "checks that is the user's birthday" do
      sign_in(today)
      expect(page).to have_content 'Happy birthday antonio!!'
    end
 end

context "when the birthday is in 364 days" do
  scenario "checks that the user's birthday is in 364 days" do
    sign_in(yesterday)
    expect(page).to have_content 'antonio your birthday is in 364 days!!'
  end
end

context "when  ther is 1 day left to the user's birthday" do
  scenario "checks that the user's birthday is in 1 day" do
    sign_in(tomorrow)
    expect(page).to have_content 'antonio your birthday is in 1 days!!'
  end
 end
end
