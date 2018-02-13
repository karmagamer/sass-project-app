<<<<<<< HEAD
json.array!(@projects) do |project|
  json.extract! project, :id, :title, :details, :expected_completion_date, :tenant_id
  json.url project_url(project, format: :json)
end
=======
json.array! @projects, partial: 'projects/project', as: :project
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
