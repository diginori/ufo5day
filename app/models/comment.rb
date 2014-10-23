class Comment
  include Mongoid::Document
  include Mongoid::Timestamps
  # fields
  field :body
  # relations
  belongs_to :user
  belongs_to :commentable, polymorphic: true
  # validations
  validates :commentable, presence: true
  # scopes
  # default_scope asc(:created_at)
end