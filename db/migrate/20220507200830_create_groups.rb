# frozen_string_literal: true

class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :service
      t.string :name
      t.string :description

      t.string :description_ciphertext

      t.timestamps
    end
  end
end
