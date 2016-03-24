
require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  
  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit root_path
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the base title" do
  		visit root_path
  		page.should have_selector('title',
		                    	:text => "#{base_title}")
	 end

   it "should have the page title" do
      visit root_path
      page.should have_selector('title',
                          :text => " | Home")
   end

  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the base title" do
		visit help_path
		page.should have_selector('title',
		                    	:text => "#{base_title}")
	end

  it "should have the page title" do
      visit help_path
      page.should have_selector('title',
                          :text => " | Help")
   end

  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit about_path
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the base title" do
		visit about_path
		page.should have_selector('title',
		                    	:text => "#{base_title}")
	end

  it "should have the page title" do
      visit about_path
      page.should have_selector('title',
                          :text => " | About Us")
   end

  end

  describe "Contact" do
  	it "should have the content 'Contact'" do
  		visit contact_path
  		page.should have_selector('h1', :text => 'Contact')
  	end

  	it "should have the base title" do
  		visit contact_path
  		page.should have_selector('title', :text => "#{base_title}")
  	end

    it "should have the page title" do
      visit contact_path
      page.should have_selector('title',
                          :text => " | Contact")
   end

  end

end
