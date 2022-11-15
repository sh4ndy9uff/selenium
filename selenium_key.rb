require 'selenium-webdriver'
url = "file:///home/usyam/workspace/selenium/key.html"

driver = Selenium::WebDriver.for :chrome

driver.get(url)

text1 = driver.find_element(:name, "text1")
text2 = driver.find_element(:name, "text2")

text1.send_keys(:shift, "test")
text1.send_keys(:control, "ac")
text2.send_keys(:control, "v")

sleep 3

driver.quit
