require 'spec_helper'

# THESE TESTS MAY NEED TO BE CHANGED AS APPLICATION IS DEVELOPED
# This will test RSpec without Capybara involvement
RSpec.describe "StaticPages", :type => :request do
  describe "Root Path" do
    it "should have response status 200" do
      get root_path
      expect(response.status).to be(200)
    end
  end

# This (visit function) will test that Capybara is integrated properly with RSpec
  describe "StaticPages" do
  	subject { page }
  	before { visit root_path }
  	it { should have_selector('h1', text: 'StaticPages#home') }
  end
end
