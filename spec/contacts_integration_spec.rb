require "capybara/rspec"
require "./app"

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the My Contacts/homepage path", {:type => :feature}) do
  it("has a link to add a contact") do
    visit("/")
    click_link("Add a Contact")
    expect(page).to have_content("Add a Contact")
  end
end

describe("the Add a Contact path", {:type => :feature}) do
  it("process the user entry and returns the contact Name") do
    visit("/add_contact")
    fill_in("contact-name", :with => "Sean")
    click_button("Add Contact")
    expect(page).to have_content("Sean")
  end
end

describe("the New Contact on Contact List path", {:type => :feature}) do
  it("lists the contact names and has a link to review a contacts details") do
    visit("/contacts_after_add")
    click_link("Sean")
    expect(page).to have_content("Contact Information")
  end
end

describe("the Individual Contact path", {:type => :feature}) do
  it("lists the contacts details and includes a form to fill out and add contact information") do
    visit("/contact/1")
    fill_in("contact-email", :with => "email@email.com")
    fill_in("contact-phone", :with => "555-5555")
    fill_in("contact-address", :with => "1234 Street")
    click_button("Add Contact Details")
    expect(page).to have_content("email@email.com")
  end
end

describe("the Clear Contact path", {:type => :feature}) do
  it("removes all contacts from list") do
    visit("/contacts")
    click_link("Clear Contacts")
    expect(page).to have_content("Contact List")
  end
end
