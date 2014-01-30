json.array!(@tapiocas) do |tapioca|
  json.extract! tapioca, :id, :name, :description, :picture
  json.url tapioca_url(tapioca, format: :json)
end
