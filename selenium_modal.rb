require 'selenium-webdriver'
url = "file:///home/usyam/workspace/selenium/modal.html"

driver = Selenium::WebDriver.for :chrome

driver.get(url)

driver.find_element(:id, "btn").click
driver.find_element(:id, "inputfield").send_keys("test")
driver.find_element(:xpath, "/html/body/div[1]/div[3]/div/button").click

sleep 3

driver.quit
