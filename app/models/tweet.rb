class Tweet < ApplicationRecord
    has_many :comments
    has_many :retweets , class_name: "Tweet", foreign_key: :parent_id
end
