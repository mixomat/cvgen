json.array! @projects do |project|
  json.(project, :title, :customer, :description, :role, :start_date, :end_date)
  json.technologies project.technologies do |technology|
    json.name technology.name
  end
end