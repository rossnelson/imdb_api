imdb_api
=====

IMDB search funtionality through http://imdbapi.com  
loosley based around the imdb gem

    search = Imdb::Search.new(:title => "Back to the Future", :year => "1985")
    => #<Imdb::Search:0x000001029c6f78 @query={:title=>"Back to the Future", :year=>"1985"}>
    search.movie
    => #<Imdb::Movie:0x000001029a24e8 @title="Back to the Future", @year="1985", @rated="PG", @rele...
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

Contributing to imdb_api
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

