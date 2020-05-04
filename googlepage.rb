require 'page-object'

class SearchPage
  include PageObject

  text_field(:searchBar, :name => 'q')
  button(:submitSearch, :name => 'btnK')

  def search(query)
    self.searchBar = query
    submitSearch
  end

  def open
    @browser.navigate.to('https://www.google.com')
  end

  def close
    @browser.quit
  end

end
