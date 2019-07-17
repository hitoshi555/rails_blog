class ChangeCloumnNameOnTagsRelation < ActiveRecord::Migration[5.2]
    def change
      rename_column :tags_relations, :tags_id, :tag_id
    end
end
