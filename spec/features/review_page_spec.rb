feature 'For User Feedback' do
  scenario 'They can rate website' do
    visit '/'
    fill_in :score, with: 2
    click_button 'Submit'
  end
end