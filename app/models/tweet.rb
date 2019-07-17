class Tweet < ApplicationRecord
    belongs_to :user
    has_many :tags_relations , class_name: "TagsRelation"
    has_many :tags, through: :tags_relations
end
