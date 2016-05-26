require 'page-object'
class Posabstract
  include PageObject
  radio(:customer,:name=>'customer')
  text_field(:mnmqty, :name=> 'mnm_qty')
  text_field(:grandtotal, :id=>'grand_total')
  button(:submitpage,:name=>'calculate')
  def bill(customer,mnmqty)
    self.mnmqty = mnmqty  #Assign a value to text box
    customer #click radio button
    submitpage #submit the page. click on button
    grandtotal #return grandtotal
  end
  end
