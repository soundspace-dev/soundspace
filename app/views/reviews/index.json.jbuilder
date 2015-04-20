json.array!(@reviews) do |review|
  json.extract! review, :id, :space_id, :reviewer_id, :title, :content, :rating
  json.url review_url(review, format: :json)
end
