class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :score, :kid_id
end
