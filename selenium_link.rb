require 'selenium-webdriver'
url = "file:///home/usyam/workspace/selenium/menu.html"

driver = Selenium::WebDriver.for :chrome

driver.get(url)

puts driver.find_element(:link_text, "Cofee").attribute("href")



sleep 3

driver.quit
