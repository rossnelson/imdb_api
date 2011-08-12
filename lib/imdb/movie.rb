module Imdb
  class Movie

    ##
    # Turn Any hash into attributes of a class
    #
    #   Imdb::Movie.new({:title => "Darkwing Duck", :year => "1991"})
    #
    def initialize(attributes)
      attributes.each do |k,v|
        k = k.downcase
        self.instance_variable_set("@#{k}", v)  ## create and initialize an instance variable for this key/value pair
        self.class.send(:define_method, k, proc{self.instance_variable_get("@#{k}")})  ## create the getter that returns the instance variable
        self.class.send(:define_method, "#{k}=", proc{|v| self.instance_variable_set("@#{k}", v)})  ## create the setter that sets the instance variable
      end
    end

  end
end
