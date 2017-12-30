require 'open-uri'
require 'csv'

url="http://www.mof.go.jp/jgbs/reference/interest_rate/jgpcm.csv"
csv = open(csv)
csv_obj = CSV.new(oepn(url), {
  :encoding => "Shift_JIS", :headers => :first_row})
csv_obj.each do |row|
  if csv_obj.eof?
    puts "base: #{row[0]}"
    puts "1year: #{row[1]}"
    puts "2year: #{row[2]}"
    puts "3year: #{row[3]}"
    puts "4year: #{row[4]}"
    puts "5year: #{row[5]}"
    puts "6year: #{row[6]}"
    puts "7year: #{row[7]}"
    puts "8year: #{row[8]}"
    puts "9year: #{row[9]}"
    puts "10year: #{row[10]}"
    puts "15year: #{row[11]}"
    puts "20year: #{row[12]}"
    puts "25year: #{row[13]}"
    puts "30year: #{row[14]}"
    puts "40year: #{row[15]}"
  end
end

