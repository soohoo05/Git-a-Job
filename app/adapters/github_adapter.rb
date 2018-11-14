class GithubAdapter
  def self.get_jobs(location, description, full_time)
    response = RestClient.get("https://jobs.github.com/positions.json?description=#{description}&location=#{location}&#{full_time}")
    json_response = JSON.parse(response.body)
    return json_response
  end
end
