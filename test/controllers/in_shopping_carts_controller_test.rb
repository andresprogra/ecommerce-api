require 'test_helper'

class InShoppingCartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @in_shopping_cart = in_shopping_carts(:one)
  end

  test "should get index" do
    get in_shopping_carts_url, as: :json
    assert_response :success
  end

  test "should create in_shopping_cart" do
    assert_difference('InShoppingCart.count') do
      post in_shopping_carts_url, params: { in_shopping_cart: { cart_id: @in_shopping_cart.cart_id, product_id: @in_shopping_cart.product_id } }, as: :json
    end

    assert_response 201
  end

  test "should show in_shopping_cart" do
    get in_shopping_cart_url(@in_shopping_cart), as: :json
    assert_response :success
  end

  test "should update in_shopping_cart" do
    patch in_shopping_cart_url(@in_shopping_cart), params: { in_shopping_cart: { cart_id: @in_shopping_cart.cart_id, product_id: @in_shopping_cart.product_id } }, as: :json
    assert_response 200
  end

  test "should destroy in_shopping_cart" do
    assert_difference('InShoppingCart.count', -1) do
      delete in_shopping_cart_url(@in_shopping_cart), as: :json
    end

    assert_response 204
  end
end
