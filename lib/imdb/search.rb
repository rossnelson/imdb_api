module Imdb
  class Search
    attr_reader :query

    ##
    # Initialize a new IMDB search with the specified query
    #
    #   search = Imdb::Search.new(:title => "True Grit", :year => "1969")
    #
    def initialize(query={})
      @query = query
    end

    ##
    # Return new Imdb::Movie object with json hash as attributes
    #
    def movie
      @movie ||= parse_json
    end

    private

    ##
    # Retrive json utilizing imdbapi.com
    #
    def document
      json = Net::HTTP.get_response URI.parse(query_string(@query))
      json.body
    end

    ##
    # Bulid url from Imdb::search instance @query attribute
    #
    def query_string(query)
      "http://www.imdbapi.com/?t=#{CGI::escape(query[:title])}&y=#{CGI::escape(query[:year]) unless query[:year].nil?}"
    end

    ##
    # Parse returned json and initialize new Imdb::Movie object
    #
    def parse_json
      attributes = JSON.parse(document)
      Imdb::Movie.new(attributes)
    end

  end
end
