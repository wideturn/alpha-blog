class AddDescriptionToArticles < ActiveRecord::Migration[6.0]
  def change
    #(Table, Field, Type)
    add_column :articles, :description, :text
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
  end
end
