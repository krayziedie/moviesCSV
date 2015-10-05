# class Movie
# 	def initialize (dvd_title,studio,released,status,sound,versions,price,rating,year,genre,aspect,upc,dvd_releasedate,id,timestamp)
# 		@dvd_title = dvd_title	
# 		@studio = studio
# 		@released = released
# 		@status = status
# 		@sound = sound
# 		@versions = versions
# 		@price = price
# 		@rating = rating
# 		@year = year
# 		@genre = genre
# 		@aspect = aspect
# 		@upc = upc
# 		@dvd_releasedate = dvd_releasedate
# 		@id = id
# 		@timestamp = timestamp 
# end

class Movie
  attr_reader :genre, :price, :studio
  def initialize(data = {})
    data.each { |name, value| instance_variable_set("@#{name}", value) }
  end
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

