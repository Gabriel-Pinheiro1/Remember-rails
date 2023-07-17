require "application_system_test_case"

class ContatcsTest < ApplicationSystemTestCase
  setup do
    @contatc = contatcs(:one)
  end

  test "visiting the index" do
    visit contatcs_url
    assert_selector "h1", text: "Contatcs"
  end

  test "should create contatc" do
    visit contatcs_url
    click_on "New contatc"

    fill_in "Address", with: @contatc.address
    fill_in "Email", with: @contatc.email
    fill_in "Name", with: @contatc.name
    fill_in "Phone", with: @contatc.phone
    click_on "Create Contatc"

    assert_text "Contatc was successfully created"
    click_on "Back"
  end

  test "should update Contatc" do
    visit contatc_url(@contatc)
    click_on "Edit this contatc", match: :first

    fill_in "Address", with: @contatc.address
    fill_in "Email", with: @contatc.email
    fill_in "Name", with: @contatc.name
    fill_in "Phone", with: @contatc.phone
    click_on "Update Contatc"

    assert_text "Contatc was successfully updated"
    click_on "Back"
  end

  test "should destroy Contatc" do
    visit contatc_url(@contatc)
    click_on "Destroy this contatc", match: :first

    assert_text "Contatc was successfully destroyed"
  end
end
