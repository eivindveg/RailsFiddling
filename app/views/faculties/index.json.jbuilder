json.array!(@faculties) do |faculty|
  json.extract! faculty, :id, :school_id, :name
  json.url faculty_url(faculty, format: :json)
end
