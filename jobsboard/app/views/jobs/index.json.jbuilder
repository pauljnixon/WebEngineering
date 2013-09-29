json.array!(@jobs) do |job|
  json.extract! job, :company, :location, :full_time, :active, :contact, :description, :requirements, :salary
  json.url job_url(job, format: :json)
end
