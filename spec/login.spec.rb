require 'rubygems'
require "rspec"
require 'watir'
require 'watir-webdriver'

describe "login" do
  let(:browser) { @browser ||= Watir::Browser.new :phantomjs } 
  before { browser.goto "http://localhost:8080/" }
  after { browser.close }

  it "debug output" do
    puts browser.url
    puts browser.title
  end

  it "should contain email and password fields" do
    browser.text_field(:name => "email").wait_until_present
    browser.text_field(:name => "password").wait_until_present
  end

  it "should login" do
    browser.text_field(:name => "email").set "test@test.com"
    browser.text_field(:name => "password").set "password"
    browser.button(:type => "submit").click
    browser.div(:id => "test").wait_until_present
  end
end

