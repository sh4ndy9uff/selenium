require 'selenium-webdriver'
url = "file:///home/usyam/workspace/selenium/file.html"

driver = Selenium::WebDriver.for :chrome

driver.get(url)

upfile = '/home/usyam/workspace/selenium/test.txt'
driver.find_element(:name, "filename").send_keys(upfile)

sleep 3

driver.quit
