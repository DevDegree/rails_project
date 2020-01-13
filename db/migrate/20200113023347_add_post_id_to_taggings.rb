class AddPostIdToTaggings < ActiveRecord::Migration[6.0]
  def change
    add_column :taggings, :post_id, :integer
  end
end
