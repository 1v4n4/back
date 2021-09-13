require 'application_system_test_case'

class BeachesTest < ApplicationSystemTestCase
  setup do
    @beach = beaches(:one)
  end

  test 'visiting the index' do
    visit beaches_url
    assert_selector 'h1', text: 'Beaches'
  end

  test 'creating a Beach' do
    visit beaches_url
    click_on 'New Beach'

    fill_in 'Campground', with: @beach.campground
    fill_in 'County', with: @beach.county
    fill_in 'Description', with: @beach.description
    fill_in 'Location', with: @beach.location
    fill_in 'Name', with: @beach.name
    fill_in 'Parking', with: @beach.parking
    fill_in 'Photo1', with: @beach.photo1
    fill_in 'Photo2', with: @beach.photo2
    fill_in 'Photo3', with: @beach.photo3
    fill_in 'Photo4', with: @beach.photo4
    fill_in 'Restrooms', with: @beach.restrooms
    click_on 'Create Beach'

    assert_text 'Beach was successfully created'
    click_on 'Back'
  end

  test 'updating a Beach' do
    visit beaches_url
    click_on 'Edit', match: :first

    fill_in 'Campground', with: @beach.campground
    fill_in 'County', with: @beach.county
    fill_in 'Description', with: @beach.description
    fill_in 'Location', with: @beach.location
    fill_in 'Name', with: @beach.name
    fill_in 'Parking', with: @beach.parking
    fill_in 'Photo1', with: @beach.photo1
    fill_in 'Photo2', with: @beach.photo2
    fill_in 'Photo3', with: @beach.photo3
    fill_in 'Photo4', with: @beach.photo4
    fill_in 'Restrooms', with: @beach.restrooms
    click_on 'Update Beach'

    assert_text 'Beach was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Beach' do
    visit beaches_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Beach was successfully destroyed'
  end
end
