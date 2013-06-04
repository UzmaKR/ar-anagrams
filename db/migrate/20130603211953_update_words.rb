class UpdateWords < ActiveRecord::Migration
  def change
    add_column :words, :sorted_word, :string
  end
end
