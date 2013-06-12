require 'spec_helper'

describe "Static pages" do
  let(:base_title) { "Twitlike" }

  describe "Home page" do

    it "should have the content 'Sample App'" do
      #visit '/static_pages/home'
      visit home_path
      page.should have_content('Twitlike')
    end

    it "should have the base title" do
      #visit '/static_pages/home'
      visit home_path
      page.should have_selector('title', :text => "#{base_title}")
    end

    it "should not have a custom page title" do
      #visit '/static_pages/home'
      visit home_path
      page.should_not have_selector('title' , :text => '| Home')
      end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      #visit '/static_pages/help'
      visit help_path
      page.should have_content('Help')
    end

    it "should have the right title" do
      #visit '/static_pages/help'
      visit help_path
      page.should have_selector('title', :text => "#{base_title} | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      #visit '/static_pages/about'
      visit about_path
      page.should have_content('About Us')
    end

    it "should have the right title" do
      #visit '/static_pages/about'
      visit about_path
      page.should have_selector('title', :text => "#{base_title} | About Us")
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact Us'" do
      #visit '/static_pages/contact'
      visit contact_path
      page.should have_content('Contact Us')
    end

    it "should have the right title" do
      #visit '/static_pages/contact'
      visit contact_path
      page.should have_selector('title', :text => "#{base_title} | Contact")
    end
  end 
end