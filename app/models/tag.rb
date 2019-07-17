class Tag < ApplicationRecord
    has_many :tags_relations , class_name: "TagsRelation"
    has_many :tweets, through: :tags_relations

end
