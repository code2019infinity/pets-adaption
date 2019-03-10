json.extract! animal, :id, :type, :description, :location, :adapted, :created_at, :updated_at
json.url animal_url(animal, format: :json)
