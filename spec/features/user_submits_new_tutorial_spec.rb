require 'rails_helper'

feature 'user views tutorial problems' do

  scenario 'any visitor can see the tutorial problem' do
    tutorial = FactoryGirl.create(:tutorial)
    visit tutorial_page(tutorial)

    expect(page).to_have_content(tutorial.name)
    expect(page).to_have_content(tutorial.description)
    expect(page).to_have_content(tutorial.problem)
    # expect to find html form
  end

  scenario 'user can see progress bar next to tutorials' do
    user = FactoryGirl.create(:user)
    tutorial =
    status = Tutorial_Status.find_by(user: user, tutorial: tutorial)
    visit tutorial_page(tutorial)

    expect(page).to_have_content(tutorial.name)
    expect(page).to_have_content(tutorial.description)
    expect(page).to_have_content(tutorial.problem)
    # expect to find html form
    expect(page).to_have_content(status)
  end

  scenario 'visitors will not see tutorial status' do
    status = Tutorial.find_by(user: user, tutorial: tutorial)
    visit tutorial_page(tutorial)

    expect(page)not_to_have_content(status)
  end

  scenario 'visitor submits wrong answer and recieves response' do
    tutorial = FactoryGirl.create(:tutorial)

    visit tutorial_page(tutorial)
    click_button 'enter'
    expect(page).to_have_content("incorrect answer. please try again")
  end

    scenario 'visitor submits correct answer and recieves response' do
    tutorial = FactoryGirl.create(:tutorial)

    visit tutorial_page(tutorial)
    fill_in 'answer', with: 42
    click_button 'enter'
    expect(page).to_have_content("correct!")
  end
end
