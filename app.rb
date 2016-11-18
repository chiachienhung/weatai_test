require 'sinatra'
require 'econfig'
require 'weatai'

# WeataiAPI web service
class WeataiAPI < Sinatra::Base
  extend Econfig::Shortcut

  Econfig.env = settings.environment.to_s
  Econfig.root = settings.root
  CWB::CWBApi
    .config
    .update(dataid1: config.DATA_ID1,
            dataid2: config.DATA_ID2,
            key:     config.AUTH_KEY, 
            format:  config.FORMAT,
            token:   config.TOKEN)

  API_VER = 'api/v0.1'

  get '/?' do
    "WeataiAPI latest version endpoints are at: /#{API_VER}/"
  end

  get "/#{API_VER}/C_weather/?" do
    begin
      weather = CWB::INSTANT.instant
      content_type 'application/json'
      { instant_weather: weather }.to_json
    rescue
      halt 404, "Instant weather not found"
    end
  end
end
