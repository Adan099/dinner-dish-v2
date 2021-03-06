# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :category_items, dependent: :destroy
  has_many :items, through: :category_items, dependent: :destroy

  validates :name, presence: true, length: { minimum: 2 }
end
