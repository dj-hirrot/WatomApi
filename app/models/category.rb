class Category < ApplicationRecord
  has_many :skills

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
