require 'selenium-webdriver'
url = "file:///home/usyam/workspace/selenium/menu.html"

driver = Selenium::WebDriver.for :chrome

driver.get(url)
puts driver.title
puts driver.page_source
puts driver.current_url

sleep 3

driver.quit
