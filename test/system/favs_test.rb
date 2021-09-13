require 'application_system_test_case'

class FavsTest < ApplicationSystemTestCase
  setup do
    @fav = favs(:one)
  end

  test 'visiting the index' do
    visit favs_url
    assert_selector 'h1', text: 'Favs'
  end

  test 'creating a Fav' do
    visit favs_url
    click_on 'New Fav'

    fill_in 'Beach', with: @fav.beach_id
    fill_in 'User', with: @fav.user_id
    click_on 'Create Fav'

    assert_text 'Fav was successfully created'
    click_on 'Back'
  end

  test 'updating a Fav' do
    visit favs_url
    click_on 'Edit', match: :first

    fill_in 'Beach', with: @fav.beach_id
    fill_in 'User', with: @fav.user_id
    click_on 'Update Fav'

    assert_text 'Fav was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Fav' do
    visit favs_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Fav was successfully destroyed'
  end
end
