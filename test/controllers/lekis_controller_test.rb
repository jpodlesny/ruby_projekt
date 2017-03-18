require 'test_helper'

class LekisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @leki = lekis(:one)
  end

  test "should get index" do
    get lekis_url
    assert_response :success
  end

  test "should get new" do
    get new_leki_url
    assert_response :success
  end

  test "should create leki" do
    assert_difference('Leki.count') do
      post lekis_url, params: { leki: { cena: @leki.cena, nazwa: @leki.nazwa } }
    end

    assert_redirected_to leki_url(Leki.last)
  end

  test "should show leki" do
    get leki_url(@leki)
    assert_response :success
  end

  test "should get edit" do
    get edit_leki_url(@leki)
    assert_response :success
  end

  test "should update leki" do
    patch leki_url(@leki), params: { leki: { cena: @leki.cena, nazwa: @leki.nazwa } }
    assert_redirected_to leki_url(@leki)
  end

  test "should destroy leki" do
    assert_difference('Leki.count', -1) do
      delete leki_url(@leki)
    end

    assert_redirected_to lekis_url
  end
end
