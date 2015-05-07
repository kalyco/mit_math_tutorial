require 'rails_helper'

feature 'visitor sees tutorials on main page' do

  scenario 'any page client will see links to the tutorial show pages' do
    user = FactoryGirl.create(:user)

    expect(page).to_have_content(tutorials)
  end

  scenario 'user can see progress bar next to tutorials' do
    user = FactoryGirl.create(:user)

    expect(page).to_have_content(user.tutorial_statuses)
  end
end
