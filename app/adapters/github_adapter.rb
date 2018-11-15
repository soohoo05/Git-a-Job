class GithubAdapter
  def self.get_jobs(location, description, full_time)
    response = RestClient.get("https://jobs.github.com/positions.json?description=#{description}&location=#{location}&#{full_time}")
    json_response = JSON.parse(response.body)
    return json_response
  end
end


# Add a route from the search function on the front-end to the users_controller on the backend. Take the
# arguments from this input and interpolate them into the url.
