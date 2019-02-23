require "spec_helper"

feature "some" do
  scenario "allow access to contacts page" do
    visit '/contacts'
    expect(page).to have_content I18n.t('contacts.contact_us')
  end
end
