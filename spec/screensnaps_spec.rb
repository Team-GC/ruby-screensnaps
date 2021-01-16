require "screensnaps"
require "spec_helper"
require "dotenv/load"

RSpec.describe Screensnaps do
  it "has a version number" do
    expect(Screensnaps::VERSION).not_to be nil
  end
  it "check api keys" do
    expect(ENV["API_KEY"]).to_not be_nil
    expect(ENV["USER_ID"]).to_not be_nil
  end
  it "check status endpoint" do
    client = Screensnaps.new(user_id: ENV["USER_ID"], api_key: ENV["API_KEY"])
    response = client.status()
    (response["status"]).equal?("OK")
  end

  it "check status screenshots endpoint" do
    client = Screensnaps.new(user_id: ENV["USER_ID"], api_key: ENV["API_KEY"])
    response = client.screenshots()
    expect(response["items"]).to_not be_nil
  end
end
