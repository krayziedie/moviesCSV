require 'csv'

movie = []
csv = CSV.open('dvd_csv_2.csv', headers: true, header_converters: :symbol, converters: :numeric )
movie = csv.map(&:to_hash)


movie.each do |data|
  data.delete(:status)
  data.delete(:sound)
  data.delete(:versions) 
  data.delete(:aspect)  
  data.delete(:upc) 
  data.delete(:dvd_releasedate)
  data.delete(:id) 
  data.delete(:timestamp)
 #puts "-------------------------------------------"
  #puts data# show data hash in console
end



puts movie.select {|i| i[:dvd_title] == "Connection (2014/ Blu-ray)" }
# hola={}
# puts movie.select{ |item| item[:genre] == "Comedy" }







