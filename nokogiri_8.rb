require 'nokogiri'
html = '<div class="aaa">aaa<p id=100 class="aaa">ppp</p></div>'

doc = Nokogiri::HTML(html)

puts node.text
doc.xpath("//div/p").remove
node = doc.at("//*[@class = 'aaa']")
puts node.text
