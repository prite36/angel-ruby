require "application_system_test_case"

class PitchesTest < ApplicationSystemTestCase
  setup do
    @pitch = pitches(:one)
  end

  test "visiting the index" do
    visit pitches_url
    assert_selector "h1", text: "Pitches"
  end

  test "creating a Pitch" do
    visit pitches_url
    click_on "New Pitch"

    fill_in "Amount raised", with: @pitch.amount_raised
    fill_in "Company name", with: @pitch.company_name
    fill_in "Description", with: @pitch.description
    fill_in "Pitch deck url", with: @pitch.pitch_deck_url
    check "Published" if @pitch.published
    click_on "Create Pitch"

    assert_text "Pitch was successfully created"
    click_on "Back"
  end

  test "updating a Pitch" do
    visit pitches_url
    click_on "Edit", match: :first

    fill_in "Amount raised", with: @pitch.amount_raised
    fill_in "Company name", with: @pitch.company_name
    fill_in "Description", with: @pitch.description
    fill_in "Pitch deck url", with: @pitch.pitch_deck_url
    check "Published" if @pitch.published
    click_on "Update Pitch"

    assert_text "Pitch was successfully updated"
    click_on "Back"
  end

  test "destroying a Pitch" do
    visit pitches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pitch was successfully destroyed"
  end
end
