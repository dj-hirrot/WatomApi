class Skill < ApplicationRecord
  before_save { self.name.downcase! }
  belongs_to :category

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
