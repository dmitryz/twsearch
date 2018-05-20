VCR.configure do |c|
  c.ignore_localhost = true
  c.cassette_library_dir = File.join(File.dirname(__FILE__), '../fixtures/vcr')
  c.hook_into :webmock
  c.configure_rspec_metadata!
  c.allow_http_connections_when_no_cassette = false

  c.default_cassette_options = { :record => :none }
  # Uncomment this line when you need to record new requests
  # c.default_cassette_options = { :record => :new_episodes }
end
