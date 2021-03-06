require 'figaro'
Geocoder.configure(
  :timeout => 5, # geocoding service timeout (secs)
  :lookup => :google, # name of geocoding service (symbol)
  :language => :en, # ISO-639 language code
  :use_https => true, # use HTTPS for lookup requests? (if supported)
  # :http_proxy   => nil,         # HTTP proxy server (user:pass@host:port)
  # :https_proxy  => nil,         # HTTPS proxy server (user:pass@host:port)
  :api_key => Figaro.env.GEOCODE_API_KEY
)