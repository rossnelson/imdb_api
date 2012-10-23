ROOT = File.dirname(__FILE__)
require 'json'
require 'net/http'
require 'uri'
require 'cgi'

require File.join(ROOT, 'omdb', 'search')
require File.join(ROOT, 'omdb', 'movie')
