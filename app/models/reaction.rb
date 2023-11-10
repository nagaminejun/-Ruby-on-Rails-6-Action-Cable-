class Reaction < ApplicationRecord
  belongs_to :to_user, class_name: "User"
  belongs_to :from_user, class_name: "User"

  # この行を追加
  enum status: { like: 0, dislike: 1 }
end
