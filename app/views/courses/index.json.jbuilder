json.array!(@courses) do |course|
  json.extract! course, :id, :name, :start_at_date, :finish_at_date, :coach
  json.url course_url(course, format: :json)
end
