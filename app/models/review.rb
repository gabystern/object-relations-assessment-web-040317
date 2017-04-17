class Review

  ALL = []

  attr_accessor :content, :restaurant, :customer

  def initialize(content)
    @content = content
    @customer = customer
    @restaurant = restaurant
    ALL << self
  end

  #returns all of the reviews
  def self.all
    ALL
  end

  #returns the customer for that given review
    #customer associated to review in Customer add_review method
  def customer
    self.customer
  end

  #returns the restaurant for that given review
    #restaurant associated to review in Customer add_review method
  def restaurant
    self.restaurant
  end

end
