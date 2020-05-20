class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :user_id
  belongs_to :lesson
end
