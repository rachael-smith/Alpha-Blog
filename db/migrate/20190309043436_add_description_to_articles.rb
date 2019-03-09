class AddDescriptionToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :description, :text
    add_column :articles, :created_date, :datetime
    add_column :articles, :modified_date, :datetime
  end
end
