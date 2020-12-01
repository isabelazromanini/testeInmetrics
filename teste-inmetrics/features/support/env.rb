



require "cucumber"
require "ffaker"
require "page-object"
require "pry"
require "rspec"
require "yaml"
require "httparty"
require "time"
require "rest-client"
require "digest"
require "geocoder"


Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8


$environments = YAML.load_file("./features/environments/environments.yml")[ENV["ENV"]]
