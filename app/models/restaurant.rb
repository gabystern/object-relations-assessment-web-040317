class Restaurant

  ALL = []

  attr_accessor :name, :reviews, :customers

  def initialize(name)
    @name = name
    @reviews = []
    @customers = []
    ALL << self
  end

  #returns an array of all restaurants
  def self.all
    ALL
  end

  #returns the first restaurant that matches -> .detect to return first
  def self.find_by_name(name)
    self.all.detect do |restaurant|
      restaurant.name == name
    end
  end

  #returns an array of all reviews for that restaurant
    #Customer add_review method should shovel in the created review into the restaurant's reviews array
  def reviews
    self.reviews
  end

  #returns an array of all customers for that restaurant
    #Customer add_review method should shovel in the customer of the created review into the restaurant's customers array
  def customers
    self.customers
  end

end
