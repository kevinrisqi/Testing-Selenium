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
    sleep(5)
    buttonSingle = driver.find_element(:class,'btn btn-default').first
    buttonSingle.click
    sleep(5)
  end
  
  Then("user input two field") do
    pending # Write code here that turns the phrase above into concrete actions
  end