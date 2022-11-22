require 'selenium-webdriver'
url_menu = "file:///home/usyam/workspace/selenium/menu.html"
url_cofee = "file:///home/usyam/workspace/selenium/cofee.html"

driver = Selenium::WebDriver.for :chrome

driver.get(url_menu)
sleep 1

driver.execute_script("window.open('#{url_cofee}');")
sleep 1

driver.switch_to.window(driver.window_handles[1])
puts driver.title

driver.switch_to.window(driver.window_handles[0])
sleep 1
puts driver.title

driver.switch_to.window(driver.window_handles[1])
driver.close
sleep 3

driver.quit
