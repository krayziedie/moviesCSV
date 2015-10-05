require 'csv'
require_relative 'class_Movie.rb'
#se lee el csv
movie = []
csv = CSV.open('dvd_csv_2.csv', headers: true, header_converters: :symbol, converters: :numeric )
movie = csv.map(&:to_hash)

Music1 = []
Documentary1 = [] 
Fantasy1 = []
Animation1 = []

#erase fields in the csv file
movie.each do |data|
  data.delete(:status)
  data.delete(:sound)
  data.delete(:versions) 
  data.delete(:aspect)  
  data.delete(:upc) 
  data.delete(:dvd_releasedate)
  data.delete(:id) 
  data.delete(:timestamp)

end
# search in the movie array and pops in each category new array
movie.each do |m|
  case m[:genre]
  when 'Music'
    Music1 << Music.new(m)
  when "Documentary"
    Documentary1 << Documentary.new(m)
  when "Fantasy"  
    Fantasy1 << Fantasy.new(m)
  when "Animation"
    Animation1 << Animation.new(m)
  end
end

#prints the total amounts by category
# puts "/////////////////////Categorias/////////////////////////"
# puts "         peliculas musicales : #{Music1.count}"
# puts "         peliculas documentales : #{Documentary1.count}"
# puts "         peliculas de fantasia : #{Fantasy1.count}"
# puts "         peliculas animadas : #{Animation1.count}"
# puts "////////////////////////////////////////////////////////"

#tess
#puts movie.select {|i| i[:dvd_title] == "Connection (2014/ Blu-ray)" }
# hola={}
# puts movie.select{ |item| item[:genre] == "Comedy" }

puts Music1





