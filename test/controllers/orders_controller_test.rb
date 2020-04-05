require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    post '/orders', params: { order: { restaurant_id: Restaurant.last.id,
                                       name: 'Funny Triangle',
                                       phone_number: '123123123' } }
    assert_response :success
  end

  test "should get show" do
    get "/orders/#{Order.last.id}"
    assert_response :success
  end

end
