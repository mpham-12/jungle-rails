require 'rails_helper'

RSpec.feature "click add button, which updates add to cart quantity", type: :feature, js: true do

  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "They see their cart increase by 1" do
    # ACT
    visit root_path
   
    # DEBUG 
    save_screenshot

    # VERIFY
    expect(page).to have_text('My Cart (0)')
    click_on('Add', match: :first)
    expect(page).to have_text('My Cart (1)')
    save_screenshot
  end
end