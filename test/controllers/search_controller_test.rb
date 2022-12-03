# frozen_string_literal: true

require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test 'should get page' do
    get search_path
    assert_response :success
  end
end
