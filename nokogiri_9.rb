require 'selenium-webdriver'
require 'nokogiri'
url = "file:///home/usyam/selenium/menu.html"

driver = Selenium::WebDriver.for :chrome
driver.manage.timeouts.implicit_wait = 10
driver.get(url)

def get_parsed_data(html)
  doc = Nokogiri::HTML(html)
  item_name = doc.at(".item_name").text
  unit_price = doc.at(".unit_price").text
  unit_price.gsub!("yen", "")
  data = item_name + "," + unit_price
  return data
end

item_links = driver.find_elements(:css, "ul.item_link > li > a")
for item_link in item_links
  sleep 1
  driver.action.
    key_down(:control).
    click(item_link).
    key_up(:control).
    perform

    driver.switch_to.window(driver.window_handles[1])
    puts get_parsed_data(driver.page_source)
    driver.close
    driver.switch_to.window(driver.window_handles[0])
end

driver.quit
