require 'selenium-webdriver'
url = "file:///home/usyam/workspace/selenium/javascript.html"

options = Selenium::WebDriver::Chrome::Options.new
options.add_argument('--headless')

driver = Selenium::WebDriver.for :chrome, options: options

driver.get(url)

w = driver.execute_script("return document.body.scrollWidth;")
h = driver.execute_script("return document.body.scrollHeight;")

driver.manage.window.resize_to(w, h)
driver.save_screenshot("screenshot_full.png")

sleep 3

driver.quit
