require 'spec_helper'

feature 'play page' do 
  before do 
    visit '/'
    fill_in 'p1_name', with: 'Astrid'
    click_button 'Submit' 
  end 

  scenario 'See RPS options' do 
    expect(page).to have_content 'Rock' 
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end 



  # scenario 'When you select the rock option that is displayed' do 
  #   click_button 'Rock'
  #   expect (page).to have_content 'You selected rock'
  # end 
end 