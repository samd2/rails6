require "application_system_test_case"

class Article3sTest < ApplicationSystemTestCase
  setup do
    @article3 = article3s(:one)
  end

  test "visiting the index" do
    visit article3s_url
    assert_selector "h1", text: "Article3s"
  end

  test "creating a Article3" do
    visit article3s_url
    click_on "New Article3"

    fill_in "Body", with: @article3.body
    fill_in "Title", with: @article3.title
    click_on "Create Article3"

    assert_text "Article3 was successfully created"
    click_on "Back"
  end

  test "updating a Article3" do
    visit article3s_url
    click_on "Edit", match: :first

    fill_in "Body", with: @article3.body
    fill_in "Title", with: @article3.title
    click_on "Update Article3"

    assert_text "Article3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Article3" do
    visit article3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Article3 was successfully destroyed"
  end
end
