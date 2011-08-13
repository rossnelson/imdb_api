require 'helper'

class TestImdbApi < Test::Unit::TestCase
  should "Create an instance of Imdb::Search" do
    search = Imdb::Search.new()
    assert_not_nil Imdb::Search
  end

  should "be a query hash" do
    search = Imdb::Search.new()
    assert_equal search.query.class, Hash
  end

  should "return instance of Imdb::Movie" do
    search = Imdb::Search.new({:title => "Back to the future"})
    assert_equal search.movie.class, Imdb::Movie
  end

   should "Keys should equal those listed" do
    keys = [:@title, :@year, :@rated, :@released, :@genre, :@director, :@writer, :@actors, :@plot, :@poster, :@runtime, :@rating, :@votes, :@id, :@response]

    search = Imdb::Search.new({:title => "Back to the future"})
    keys.each do |key|
      assert_equal true, search.movie.instance_variables.include?(key), "#{key} was not found in this Class"
    end
  end

  should "return Parse Error" do
    search = Imdb::Search.new({:title => ""})
    assert_equal search.movie.response, "Parse Error"
  end

  should "be able to pass any hash as attriubtes into ImDB::Movie" do
    movie = Imdb::Movie.new({:arrbitrary_key => "Yeah, you know it."})
    assert_equal movie.arrbitrary_key, "Yeah, you know it."
  end
  
end
