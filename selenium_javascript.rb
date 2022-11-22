require 'selenium-webdriver'
url = "file:///home/usyam/workspace/selenium/javascript.html"

driver = Selenium::WebDriver.for :chrome

driver.get(url)

driver.execute_script("ans = 1 + 1 ; alert(ans);")
sleep 1

driver.switch_to.alert.accept

driver.execute_script("myfunc(ans);")
sleep 1
driver.switch_to.alert.accept

driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")

sleep 3

driver.quit
