omdb_api
=====

OMDB search funtionality through http://omdbapi.com  
Based around the omdb gem


Install
=====

	gem "omdb_api", :git => "git://github.com/rossnelson/omdb_api.git"

Usage
=====

    search = Omdb::Search.new(:title => "Back to the Future", :year => "1985")
    => #<Omdb::Search:0x000001029c6f78 @query={:title=>"Back to the Future", :year=>"1985"}>
    search.movie
    => #<Omdb::Movie:0x000001029a24e8 @title="Back to the Future", @year="1985", @rated="PG", @rele...
    search.movie.title
    => "Back to the Future"

list of available movie attributes
-

:title,
:year,
:rated,
:released,
:genre,
:director,
:writer,
:actors,
:plot,
:poster,
:runtime,
:rating,
:votes,
:id,
:response

Contributing to omdb_api
=====

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

Copyright
======

Copyright (c) 2011 rossnelson. See LICENSE.txt for
further details.

