require 'selenium-webdriver'
url = "file:///home/usyam/workspace/selenium/menu.html"

driver = Selenium::WebDriver.for :chrome

driver.get(url)
sleep 3

driver.quit
