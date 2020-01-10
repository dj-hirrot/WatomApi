require 'test_helper'

class SkillTest < ActiveSupport::TestCase
  def setup
    _category = Category.create(name: 'category')
    @skill = Skill.new(category_id: _category, name: 'skill')
  end

  test 'should be valid' do
    assert @skill.valid?
  end

  test 'name should be present' do
    @skill.name = ' '
    assert_not @skill.valid?
  end
end
