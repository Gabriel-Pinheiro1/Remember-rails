require "test_helper"

class ContatcsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contatc = contatcs(:one)
  end

  test "should get index" do
    get contatcs_url
    assert_response :success
  end

  test "should get new" do
    get new_contatc_url
    assert_response :success
  end

  test "should create contatc" do
    assert_difference("Contatc.count") do
      post contatcs_url, params: { contatc: { address: @contatc.address, email: @contatc.email, name: @contatc.name, phone: @contatc.phone } }
    end

    assert_redirected_to contatc_url(Contatc.last)
  end

  test "should show contatc" do
    get contatc_url(@contatc)
    assert_response :success
  end

  test "should get edit" do
    get edit_contatc_url(@contatc)
    assert_response :success
  end

  test "should update contatc" do
    patch contatc_url(@contatc), params: { contatc: { address: @contatc.address, email: @contatc.email, name: @contatc.name, phone: @contatc.phone } }
    assert_redirected_to contatc_url(@contatc)
  end

  test "should destroy contatc" do
    assert_difference("Contatc.count", -1) do
      delete contatc_url(@contatc)
    end

    assert_redirected_to contatcs_url
  end
end
