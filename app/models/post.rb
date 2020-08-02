class Post < ActiveRecord::Base
  # belongs_to :user
  belongs_to :creator, foreign_key: "user_id", class_name: "User"
  # when you change the association name,
  # you have to be explicit about the foreign name and class name
  has_many :comments
  has_many :post_categories
  has_many :categories, through: :post_categories

  validates :title, presence: true, length: {minimum: 5}
  validates :description, presence: true
  validates :url, presence: true, uniqueness: true
end
