## Omdb API

OMDB search funtionality through http://omdbapi.com

Why? You may ask. Isn't there already an [OMDB](https://github.com/jvanbaarsen/omdb) gem? Well this was an project I built in pure self education. I wanted to understand how to access an remote api with Ruby. So now this exists.

## Install

`gem "omdb_api", :git => "git://github.com/rossnelson/omdb_api.git"`

## Usage

~~~
search = Omdb::Search.new(:title => "Back to the Future", :year => "1985")
=> #<Omdb::Search:0x000001029c6f78 @query={:title=>"Back to the Future", :year=>"1985"}>
search.movie
=> #<Omdb::Movie:0x000001029a24e8 @title="Back to the Future", @year="1985", @rated="PG", @rele...
search.movie.title
=> "Back to the Future"
~~~

list of available movie attributes

~~~
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
~~~

## Copyright

Copyright (c) 2011 rossnelson. See LICENSE.txt for
further details.

