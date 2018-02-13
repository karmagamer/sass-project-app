<<<<<<< HEAD
json.extract! @artifact, :id, :name, :key, :project_id, :created_at, :updated_at
=======
json.partial! "artifacts/artifact", artifact: @artifact
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
