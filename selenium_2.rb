require 'selenium-webdriver'
url = "file:///home/usyam/workspace/selenium/menu.html"

options = Selenium::WebDriver::Chrome::Options.new
options.add_argument('--incognito')
options.add_argument('--window-size=500,300')

driver = Selenium::WebDriver.for :chrome, options: options

driver.get(url)
sleep 3

driver.quit
