class LessonSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :body, :video_url
  has_many :comments
  belongs_to :user

  attribute :favorite_count do |object|
    object.favorites.count
  end
end
