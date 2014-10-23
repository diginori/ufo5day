class Post
  include Mongoid::Document
  belong_to :category
  field :title, type: String
  field :body, type: String
end
