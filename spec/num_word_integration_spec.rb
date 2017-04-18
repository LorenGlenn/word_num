require('capybara/rspec')
require('./app')
require('launchy')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the num word path', {:type => :feature}) do
  it('processes the user entry returned as words') do
    visit('/')
    fill_in('number', :with => 15)
    click_button('Submit')
    expect(page).to have_content('fifteen')
  end
end
