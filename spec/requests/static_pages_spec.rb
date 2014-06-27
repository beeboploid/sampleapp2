require 'spec_helper'

describe "Static pages" do

	let(:base_title) { "Ruby on Rails Tutorial Sample App" }
	subject { page }

	  describe "Home page" do
	    before { visit root_path }

		it { should have_content('Sample App') }
    	it { should have_title(full_title('')) } # This uses the method in utilities.rb file in spec/support
    	it { should_not have_title('| Home') }
	  end

	  describe "Help page" do

	    it "should have the content 'Help'" do
	      visit help_path
	      expect(page).to have_content('Help')
	    end

	    it "should have the title 'Help'" do
	      visit help_path
	      expect(page).to have_title("#{base_title} | Help")
	    end
	  end

	  describe "About page" do

	    it "should have the content 'About Us'" do
	      visit about_path
	      expect(page).to have_content('About Us')
	    end

	    it "should have the title 'About Us'" do
	      visit about_path
	      expect(page).to have_title("#{base_title} | About Us")
	    end
	  end

	  describe "Contact Page" do

	  	it "should have content 'Contact Us'" do
	  		visit contact_path
	  		expect(page).to have_content('Contact Us')
		end

		it "should have the title 'Contact Us'" do
			visit contact_path
	      	expect(page).to have_title("#{base_title} | Contact Us")
		end
	  end
end