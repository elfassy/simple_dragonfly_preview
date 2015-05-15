require "test_helper"

class PreviewTest < Capybara::Rails::TestCase
  test "show preview of image selected" do
    visit new_user_path
    assert_content page, "New user"
    fill_in('Name', :with => 'John')
    fill_in('Email', :with => 'john@doe.com')
    assert find('.user_avatar img')['src'].include?('default.png')
    within_frame(0) do
      attach_file('image', File.absolute_path('./test/images/test_picture.jpg'))
      wait_for_ajax
    end
    image_url = find('.user_avatar img')['src']
    refute image_url.include?('default.png'), "should display new image but is displaying default"
    click_on 'Create User'
    refute find('img')['src'].blank?, "image is not saved on form submit"
    assert page.has_content?("test_picture.jpg"), "image title is not saved"
  end

  private

  def wait_for_ajax
    Timeout.timeout(Capybara.default_wait_time) do
      loop until page.evaluate_script("document.getElementById('image').value === ''")
    end
  end
end
