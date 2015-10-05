class Movie
  attr_reader :genre, :price, :studio
  def initialize(data = {})
    data.each { |name, value| instance_variable_set("@#{name}", value) }
  end
end

def to_s
    return "[#{@genre}] #{@dvd_title} (#{@year}) #{@rating}"
  end

  class Music < Movie
  def initialize(data = {})
    super
    @genre = 'Music'
  end
end

class Documentary < Movie
  def initialize(data = {})
    super
    @genre = 'Documentary'
  end
end

class Fantasy < Movie
  def initialize(data = {})
    super
    @genre = 'Fantasy'
  end
end

class Animation < Movie
  def initialize(data = {})
    super
    @genre = 'Animation'
  end
end

