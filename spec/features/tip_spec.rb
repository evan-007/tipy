require 'spec_helper'

feature 'Calculating tips'  do

	scenario "can enter meal data" do
		visit '/'
		fill_in 'price', with: '50'
		fill_in 'tip', with: '15'
		fill_in 'tax', with: '5'
	end
end