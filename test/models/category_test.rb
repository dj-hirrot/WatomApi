require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  def setup
    @category = Category.new(name: "category")
  end

  test "category should be valid" do
    assert @category.valid?
  end

  test "category naem should be present" do
    @category.name = " "
    assert_not @category.valid?
  end

  test "category naem should be unique" do
    dup_category = @category.dup
    dup_category.name = @category.name.upcase
    @category.save
    assert_not dup_category.valid?
  end
end
