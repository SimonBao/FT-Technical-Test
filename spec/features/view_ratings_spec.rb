feature 'For User Feedback Collection' do
  scenario 'can see website reviews' do
    visit '/rating/new'
    fill_in :score, with: 5
    click_button 'Submit'
    visit '/rating'
    expect(page).to_not have_content(1)
    expect(page).to have_content(5)
  end

  scenario 'rating is persistent' do
    visit '/rating/new'
    fill_in :score, with: 2
    click_button 'Submit'
    visit '/rating'
    expect(page).to_not have_content(5)
    expect(page).to have_content(2)
    visit '/rating/new'
    fill_in :score, with: 5
    click_button 'Submit'
    visit '/rating'
    expect(page).to have_content(2)
    expect(page).to have_content(5)
  end

end