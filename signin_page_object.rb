require 'page-object'
class LoginPageObject
  include PageObject

  link(:loginlink, :xpath => '/html/body/nav/div[2]/ul/li[2]/a')
  text_field(:username, :id => 'email')
  text_field(:userpassword, :id => 'password')
  button(:loginbutton, :xpath => '/html/body/div/div/div[1]/div/div/div[2]/form/div/div[2]/input')
  link(:signout, :xpath => '/html/body/nav/div[2]/ul/li[4]/a')

end
