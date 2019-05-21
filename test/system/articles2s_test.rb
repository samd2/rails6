require "application_system_test_case"

class Articles2sTest < ApplicationSystemTestCase
  setup do
    @articles2 = articles2s(:one)
  end

  test "visiting the index" do
    visit articles2s_url
    assert_selector "h1", text: "Articles2s"
  end

  test "creating a Articles2" do
    visit articles2s_url
    click_on "New Articles2"

    fill_in "Body", with: @articles2.body
    fill_in "Title", with: @articles2.title
    click_on "Create Articles2"

    assert_text "Articles2 was successfully created"
    click_on "Back"
  end

  test "updating a Articles2" do
    visit articles2s_url
    click_on "Edit", match: :first

    fill_in "Body", with: @articles2.body
    fill_in "Title", with: @articles2.title
    click_on "Update Articles2"

    assert_text "Articles2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Articles2" do
    visit articles2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Articles2 was successfully destroyed"
  end
end
