require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "should create product" do
    visit products_url
    click_on "New product"

    fill_in "Code", with: @product.code
    fill_in "Created datetime", with: @product.created_datetime
    fill_in "Created t", with: @product.created_t
    fill_in "Creator", with: @product.creator
    fill_in "Generic name", with: @product.generic_name
    fill_in "Last modified datetime", with: @product.last_modified_datetime
    fill_in "Last modified t", with: @product.last_modified_t
    fill_in "Product name", with: @product.product_name
    fill_in "Quantity", with: @product.quantity
    fill_in "Url", with: @product.url
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "should update Product" do
    visit product_url(@product)
    click_on "Edit this product", match: :first

    fill_in "Code", with: @product.code
    fill_in "Created datetime", with: @product.created_datetime.to_s
    fill_in "Created t", with: @product.created_t
    fill_in "Creator", with: @product.creator
    fill_in "Generic name", with: @product.generic_name
    fill_in "Last modified datetime", with: @product.last_modified_datetime.to_s
    fill_in "Last modified t", with: @product.last_modified_t
    fill_in "Product name", with: @product.product_name
    fill_in "Quantity", with: @product.quantity
    fill_in "Url", with: @product.url
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "should destroy Product" do
    visit product_url(@product)
    click_on "Destroy this product", match: :first

    assert_text "Product was successfully destroyed"
  end
end
