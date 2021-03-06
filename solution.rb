class Customer

  ALL = []

  attr_accessor :first_name, :last_name, :reviews

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @reviews = []
    ALL << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  #return all of the customers
  def self.all
    ALL
  end

  #return the customer whose full name matches
  def self.find_by_name(name)
    self.all.find do |customer|
      customer.full_name == name
    end
  end

  #returns an array containing all customers with that first name
  def self.find_all_by_first_name(name)
    self.all.collect do |customer|
      customer.first_name == name
    end
  end

  #return an array of all of the customer full names
  def self.all_names
    self.all.collect do |customer|
      customer.full_name
    end
  end

  # create a new review and associate it with that customer and that restaurant
    # step 1 create new review with the given content
    # step 2 push review into the customer's reviews array to keep track of all of their reviews -> might not be needed per directions
    # step 3 associate the review with the customer instance
    # step 4 associate the review with the given restaurant
    # step 5 push the review into the given restaurant's reviews array so restaurant keeps track of its reviews
    # step 6 push the review into the given restaurant's customers array so restaurant keeps track of its customers
      # a lot is going on in this method, I feel like this method could be split up
      # keep getting 'stack level too deep' in console when trying to add review to restaurant.reviews & self to restaurant.customers???
  def add_review(restaurant, content)
    review = Review.new(content)
    self.reviews << review
    review.customer = self
    review.restaurant = restaurant
    restaurant.reviews << review
    restaurant.customers << self
  end

end

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
