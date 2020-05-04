require 'selenium-webdriver'
require 'test/unit'
require '../tests/search'
class SearchPageTest < Test::Unit::TestCase
  def test_search_page
    @browser = Selenium::WebDriver.for :firefox
    search_page = SearchPage.new(@browser)
    search_page.open
    search_page.search('page-objects')
    sleep 2
    search_page.close
  end
end
