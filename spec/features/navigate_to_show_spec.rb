require "rails_helper"

RSpec.describe "characters/show" do 
  it 'can be navigated to from the index page and will render the correct image' do 
    visit characters_path
    click_on("Luke Skywalker")
    expect(page).to have_selector "img[src='https://upload.wikimedia.org/wikipedia/en/9/9b/Luke_Skywalker.png']"
  end

  it 'has a "Next" link that when clicked on should render the next character' do 
    visit character_path(1)
    click_on("Next")    
    expect(page.current_path).to eq(character_path(2))
  end 
  
  it 'should not render the "Next" link on character 10' do
    visit character_path(10)
    expect(page).not_to have_selector("a", text: "Next")
  end

  it 'should render the "Previous" link on character 10' do 
    visit character_path(10)
    expect(page).to have_selector("a", text: "Previous")
  end
end 