require 'selenium-webdriver'
url = "file:///home/usyam/workspace/selenium/menu.html"

driver = Selenium::WebDriver.for :chrome

driver.get(url)

element = driver.find_element(:link_text, "Cofee")
element.click
sleep 1

driver.navigate.refresh
sleep 1

driver.navigate.back
sleep 1

driver.navigate.forward
puts driver.current_url
sleep 3


sleep 3

driver.quit
