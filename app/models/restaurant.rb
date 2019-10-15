class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    customers = self.reviews.map { |review| review.customer }
    return customers.uniq
  end

  def average_star_rating
    ratings = self.reviews.map { |review| review.rating }
    return ( ratings.sum / ratings.size )
  end

  def longest_review
    return self.reviews.max { |x, y| x.content.length <=> y.content.length }
  end

  def self.find_by_name(name)
    self.all.find { |restaurant| restaurant.name == name }
  end

end
