class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :full_name, :nick_name, :profile_thumbnail_url, :country_id
  has_many :lessons
end
