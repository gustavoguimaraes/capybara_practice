require 'spec_helper.rb'

#Capybara syntax. Integration test or feature test
feature "view Homepage" do
 before(:each) {visit root_path}

  scenario "user can access homepage" do
    page.status_code.should eq(200)
  end

  scenario "user see relevant information" do
    page.should have_content(/Hello World!/i)
  end

  scenario "expect to have css" do
    expect(page).to have_css 'h2', text: 'Hello World!'
  end

end