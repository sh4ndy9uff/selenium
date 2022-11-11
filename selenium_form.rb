require 'selenium-webdriver'
url = "file:///home/usyam/workspace/selenium/cofee.html"

driver = Selenium::WebDriver.for :chrome

driver.get(url)

element = driver.find_element(:name, "num")
select_num = Selenium::WebDriver::Support::Select.new(element)

select_num.select_by(:value, "2")
element = driver.find_element(:xpath, "/html/body/form/input[1]")
element.click

chk_sugar = driver.find_element(:css, "input[name='included'][value='sugar']")
chk_milk = driver.find_element(:css, "input[name='included'][value='milk']")
chk_cream = driver.find_element(:css, "input[name='included'][value='cream']")

chk_sugar.click
chk_cream.click

p chk_milk.selected?
p chk_cream.selected?

element = driver.find_element(:name, "remarks")
element.send_keys("would like to pretty hot, please")

sleep 1

element = driver.find_element(:css, "input[type='submit']")
element.click

driver.switch_to.alert.accept

sleep 3

driver.quit
