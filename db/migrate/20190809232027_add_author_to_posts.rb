# frozen_string_literal: true

class AddAuthorToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :author, :string
  end
end
