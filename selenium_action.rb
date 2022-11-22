require 'selenium-webdriver'
url = "file:///home/usyam/workspace/selenium/menu.html"

driver = Selenium::WebDriver.for :chrome

driver.get(url)

tag_link = driver.find_element(:tag_name, "a")

driver.action.
  key_down(:control).
  click(tag_link).
  key_up(:control).
  perform

driver.switch_to.window(driver.window_handles[1])
sleep 1

driver.action.
  key_down(:control).
  send_keys("a").
  key_up(:control).
  perform

sleep 3

driver.quit
