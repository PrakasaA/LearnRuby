require 'selenium-webdriver'
require 'test/unit'

class CheeseFinderTests < Test::Unit::TestCase
  def test_find_some_cheese
    driver = Selenium::WebDriver.for :chrome

    driver.navigate.to('https://rahulshettyacademy.com/angularpractice/')
    driver.manage.window.maximize

    driver.find_element(:name, 'name').send_keys('Arizal Prakasa')
    driver.find_element(:name, 'email').send_keys('jobprakasa@gmail')
    driver.find_element(:id, 'exampleInputPassword1').send_keys('Prakasa11')
    driver.find_element(:id,'exampleCheck1').click
    driver.find_element(:name, 'bday').send_keys('11051996')
    driver.find_element(:class, 'btn-success').click
    assert(driver.find_element(:class, 'alert-success').text.include?('Success!'))

    sleep(8)
  end

end