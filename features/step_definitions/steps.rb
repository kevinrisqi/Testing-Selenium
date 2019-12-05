require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for:chrome

Given("open the website") do
    driver.manage.window.maximize
    sleep(2)
    driver.navigate.to "https://www.seleniumeasy.com/test/basic-first-form-demo.html"
    sleep(6)
  end
  
  Then("user input single field") do
    inputSingle = driver.find_element(:id, 'user-message')
    inputSingle.send_keys("kevin")
    sleep(3)
    driver.find_element(:css, '.btn:nth-child(2)').click
    sleep(5)
  end
  
  Then("user input two field") do
    driver.find_element(:id, 'sum1').click
    driver.find_element(:id, 'sum1').send_keys('1')
    driver.find_element(:id, 'sum2').click
    driver.find_element(:id, 'sum2').send_keys('2')
    driver.find_element(:css, '.btn:nth-child(3)').click
    sleep(5)
  end