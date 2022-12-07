require 'selenium-webdriver'
url = "file:///home/usyam/selenium/multiclass.html"

driver = Selenium::WebDriver.for :chrome

driver.get(url)

elements = driver.find_elements(:css, ".want.need")
for element in elements
  puts element.text
end

sleep 3

driver.quit
