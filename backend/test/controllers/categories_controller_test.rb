require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    path_image = 'public/images/categories/mexican.jpg'
    Category.all.each do |category|
      category.image.attach(io: File.open(path_image), filename: 'mexican.jpg')
    end

    get categories_path

    assert_response :success
  end
end
