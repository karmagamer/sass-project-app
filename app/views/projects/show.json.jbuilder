<<<<<<< HEAD
json.extract! @project, :id, :title, :details, :expected_completion_date, :tenant_id, :created_at, :updated_at
=======
json.partial! "projects/project", project: @project
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
