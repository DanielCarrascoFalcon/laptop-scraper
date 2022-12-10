# frozen_string_literal: true

require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get home' do
    get root_url
    assert_response :success
  end

  test 'should get home text' do
    get root_url
    assert_select 'h1', 'Web scraper de notebooks'
  end
end
