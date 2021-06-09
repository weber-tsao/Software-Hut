Airbrake.configure do |config|
  config.api_key = 'a81a1f717ce72a314a32238e4721aa19'
  config.host    = 'errbit.hut.shefcompsci.org.uk'
  config.port    = 443
  config.secure  = config.port == 443
end