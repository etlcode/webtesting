require 'page-object'
class YahooLogin

  include PageObject
  text_field(:username, :name=> 'username')
  button(:nextpage,:name=>'signin')
  text_field(:password, :name=>'passwd')
  button(:submitpage,:name=>'signin')
  def login(username,pwd)
    self.username = username  #Assign a value to text box
    nextpage #clicknext
    self.password = pwd  #Assign a value to text box
    submitpage #clicknext
  end


end