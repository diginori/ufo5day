class Post
  include Mongoid::Document
  belongs_to :category
  field :title, type: String
  field :body, type: String
end
