class Post
  include Mongoid::Document
  belongs_to :category
  belongs_to :user
  has_many :comments, as: :commentable, dependent: :destroy
  field :title, type: String
  field :body, type: String
  mount_uploader :featured, ImageUploader
end
