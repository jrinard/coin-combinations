require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('coin_combination path', {:type => :feature}) do
  it('calculates the coin combinations for a given amount of change') do
    visit('/')
    fill_in('quarters', :with => '68')
    fill_in('dimes', :with => '68')
    fill_in('nickles', :with => '68')
    fill_in('user_input_init', :with => '68')
    click_button('Go')
    expect(page).to have_content("2 quarters, 1 dimes, 1 nickle, 3 pennies")
  end

  it('calculates the coin combinations for a given amount of change') do
    visit('/')
    fill_in('quarters', :with => '2')
    fill_in('dimes', :with => '1')
    fill_in('nickles', :with => '100')
    fill_in('user_input_init', :with => '85')
    click_button('Go')
    expect(page).to have_content("2 quarters, 1 dimes, 5 nickle")
  end
end
