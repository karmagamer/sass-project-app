<<<<<<< HEAD
json.array!(@artifacts) do |artifact|
  json.extract! artifact, :id, :name, :key, :project_id
  json.url artifact_url(artifact, format: :json)
end
=======
json.array! @artifacts, partial: 'artifacts/artifact', as: :artifact
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
