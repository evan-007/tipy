require 'spec_helper'

feature 'Calculating tips'  do

	before do
		visit '/'
		fill_in 'price', with: '50'
		fill_in 'tip', with: '15'
		fill_in 'tax', with: '5'
	end

	scenario "can calculate meal info" do
		click_button "Calculate"

		page.should have_content("Tip: $7.5")
		page.should have_content("Tax: $2.5")
		page.should have_content("Total: $60")
	end
end