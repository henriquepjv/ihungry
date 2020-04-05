require 'test_helper'

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    path_image = 'public/images/restaurants/1.jpeg'
    Restaurant.all.each do |restaurant|
      restaurant.image.attach(io: File.open(path_image), filename: 'restaurant.jpg')
    end

    get restaurants_path

    assert_response :success
  end

  test 'should get show' do
    path_image = 'public/images/restaurants/1.jpeg'
    restaurant = Restaurant.last
    restaurant.image.attach(io: File.open(path_image), filename: 'restaurant.jpg')

    get "/restaurants/#{restaurant.id}"

    assert_response :success
  end

  test 'should get search' do
    path_image = 'public/images/restaurants/1.jpeg'
    Restaurant.all.each do |restaurant|
      restaurant.image.attach(io: File.open(path_image), filename: 'restaurant.jpg')
    end

    get restaurants_search_path

    assert_response :success
  end
end
