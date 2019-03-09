class UpdateTimestampsForArticles < ActiveRecord::Migration[5.2]
  def change
    rename_column :articles, :created_date, :created_at
    rename_column :articles, :modified_date, :updated_at
  end
end
