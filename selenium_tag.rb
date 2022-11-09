require 'selenium-webdriver'
url = "file:///home/usyam/workspace/selenium/menu.html"

driver = Selenium::WebDriver.for :chrome

driver.get(url)

tags_h1 = driver.find_elements(:tag_name, "h1")
for h1 in tags_h1
  puts h1.text
end

tags_a = driver.find_elements(:tag_name, "a")
for a in tags_a
  puts a.text + " " + a.attribute("href")
end

puts driver.find_elements(:tag_name, "ul").length
puts driver.find_elements(:tag_name, "a")[1].text
sleep 1
driver.find_elements(:tag_name, "a")[1].click

sleep 3

driver.quit
