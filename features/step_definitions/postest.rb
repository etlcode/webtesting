#include watir gem
require 'watir'
#include posabstract class file
require 'abstract/posabstract'
require 'abstract/yahoo_login'
Given(/^existing shopper picks one item with a permitted quantity$/) do
  @mnmqty=9 #prepare data
  @customer=true
end
When(/^the billing is done$/) do
  #watir works fine with firefox,chrome, safari etc. Change ie to firefox
  #to open page in firefox
  myBrowser=Watir::Browser.new :ie  #create a browser instance for ie
  #open the url using the browser instance
  myBrowser.goto("http://etlcode.com/index.php/tutorial/point_of_sale")
  #Initiate page object with the browser instance
  myPos=Posabstract.new(myBrowser)
  @results=myPos.bill(@customer,@mnmqty)
end
Then(/^user is charged with amount after tax and discount$/) do
 # Result is (unitprice * qty)+ (unitprice * qty)*.02 - (unitprice * qty)*.01
 # (9*1.5)+(9*1.5)*(.01)=13.635
 expect(@results.to_f).to eq(13.635)
end

Given(/^I have yahoo login credentials$/) do
  @username="polkamsanjay"
  @password="Mypassword"
end

When(/^used on web pae$/) do
  myBrowser=Watir::Browser.new :firefox  #create a browser instance for ie
  #open the url using the browser instance
  myBrowser.goto("https://login.yahoo.com/?.src=ym&.intl=us&.lang=en-US&.done=https%3a//mail.yahoo.com")
  #Initiate page object with the browser instance
  myYahoo=YahooLogin.new(myBrowser)
  @results=myYahoo.login(@username,@password)
end

Then(/^I could login$/) do
  pending
end