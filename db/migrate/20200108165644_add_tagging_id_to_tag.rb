class AddTaggingIdToTag < ActiveRecord::Migration[6.0]
  def change
    add_column :tags, :tagging_id, :integer
  end
end
