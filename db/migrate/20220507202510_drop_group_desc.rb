# frozen_string_literal: true

class DropGroupDesc < ActiveRecord::Migration[7.0]
  def change
    remove_column :groups, :description
  end
end
