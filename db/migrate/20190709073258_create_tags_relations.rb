class CreateTagsRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :tags_relations do |t|
      t.integer :tweet_id
      t.integer :tags_id
      t.timestamps
    end
  end
end
