Then(/^I should see an image "([^"]*)"$/) do |image_name|
  image = Image.find_by(name: image_name)
  within '#images' do
      expect(page).to have_content image_name
      expect(page).to have_css "img[src*='#{image.file.url}']"
    end
end
