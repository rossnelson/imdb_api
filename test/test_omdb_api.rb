require 'helper'

class TestOmdbApi < Test::Unit::TestCase
  should "Create an instance of Omdb::Search" do
    search = Omdb::Search.new()
    assert_not_nil Omdb::Search
  end

  should "be a query hash" do
    search = Omdb::Search.new()
    assert_equal search.query.class, Hash
  end

  should "return instance of Omdb::Movie" do
    search = Omdb::Search.new({:title => "Back to the future"})
    assert_equal search.movie.class, Omdb::Movie
  end

   should "Keys should equal those listed" do
    keys = [:@title, :@year, :@rated, :@released, :@genre, :@director, :@writer, :@actors, :@plot, :@poster, :@runtime, :@imdbrating, :@imdbid, :@imdbvotes, :@response]

    search = Omdb::Search.new({:title => "True Grit"})
    keys.each do |key|
      assert_equal true, search.movie.instance_variables.include?(key), "#{key} was not found in this Class"
    end
  end

  should "return False" do
    search = Omdb::Search.new({:title => ""})
    assert_equal search.movie.response, "False"
  end

  should "be able to pass any hash as attriubtes into ImDB::Movie" do
    movie = Omdb::Movie.new({:arrbitrary_key => "Yeah, you know it."})
    assert_equal movie.arrbitrary_key, "Yeah, you know it."
  end
  
end
