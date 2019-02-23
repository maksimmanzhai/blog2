require "spec_helper"

feature "some" do
  scenario "allow access to contacts page" do
    visit '/contacts'
    expect(page).to have_content 'Contact us'
  end
end
