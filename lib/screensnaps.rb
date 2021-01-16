require "screensnaps/version"
require "httparty"

class Screensnaps
  include HTTParty
  base_uri "https://api.screensnaps.io"
  format :json
  headers "Content-Type" => "application/json"

  def initialize(user_id: "", api_key: "")
    @userId = user_id
    @apiKey = api_key
  end

  def screenshots(params = {})
    body = { api_key: @apiKey }.merge(params)

    self.class.get("/v1/screenshots",
                   query: body,
                   headers: { "Authorization": @userId })
  end

  def status()
    self.class.get("/v1/status",
                   query: { api_key: @apiKey },
                   headers: { "Authorization": @userId })
  end

  def screenshot(params = {})
    body = params.to_json
    puts body

    self.class.post("/v1/screenshot",
                    body: body,
                    query: { "api_key": @apiKey },
                    headers: { "Authorization": @userId })
  end
end
