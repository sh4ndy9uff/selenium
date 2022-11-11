require 'selenium-webdriver'
url = "file:///home/usyam/workspace/selenium/dialog.html"

driver = Selenium::WebDriver.for :chrome

driver.get(url)

driver.find_element(:id, "alert").click
sleep 1
driver.switch_to.alert.accept

driver.find_element(:id, "confirm").click
sleep 1
driver.switch_to.alert.dismiss

driver.find_element(:id, "prompt").click
sleep 1
driver.switch_to.alert.send_keys("test")
driver.switch_to.alert.accept
sleep 1
driver.switch_to.alert.accept
                    
sleep 3

driver.quit
