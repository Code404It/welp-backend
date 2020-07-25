class KidSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image_url

  has_many :reviews
end
