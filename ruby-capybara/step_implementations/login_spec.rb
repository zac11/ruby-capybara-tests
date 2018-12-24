require_relative 'spec_helper'
APP_URL = 'https://the-internet.herokuapp.com/login'
LOGIN_HEADER = 'h2'

step 'LOGIN: Visit the login page' do
  visit(APP_URL)
end

step 'LOGIN: Verify the heading is <page_header>' do |page_header|
  expect(LOGIN_HEADER).to have_content(page_header)
end