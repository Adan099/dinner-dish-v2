# frozen_string_literal: true

class AddPriceToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :price, :float
  end
end
