require 'rubygems'
require 'nokogiri'
require 'open-uri'

start_time = Time.now

  url = "http://www.premierleague.com/content/premierleague/en-gb/players/index.html?paramSearchType=BY_STAT&paramSeason=2011-2012&paramStatisticType=TOP_SCORERS&paramItemsPerPage=1000&paramSelectedPageIndex=1"
  doc = Nokogiri::HTML(open(url))
  # puts doc.at_css("title").text
  title = doc.at_css(".players-table .rank").text
  price = doc.at_css(".players-table .stat").text
  puts "#{title} - $#{price}"
end_time = Time.now
execution_time = end_time - start_time
puts "Execution Time: #{execution_time} sec"


# doc.css(".rtq_div").each do |item|
#   title = item.at_css(".yfi_investing_content .yfi_rt_quote_summary .title h2 span").text
#   # price = item.at_css(".PriceCompare .BodyS, .PriceXLBold").text[/\$[0-9\.]+/]
#   price = item.at_css(".time_rtq_ticker span").text
#   puts "#{title} || #{price}"
#   puts item.at_css(".prodLink")[:href]
