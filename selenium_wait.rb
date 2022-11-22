require 'selenium-webdriver'
url = "file:///home/usyam/workspace/selenium/wait.html"

driver = Selenium::WebDriver.for :chrome

driver.get(url)

wait = Selenium::WebDriver::Wait.new(:timeout => 10)

wait.until { driver.find_element(:id, "msg").displayed? }
puts driver.find_element(:id, "msg").text

wait.until { driver.find_element(:id, "btn").enabled? }
puts driver.find_element(:id, "btn").attribute("value")

sleep 3

driver.quit
