feature 'For User Feedback Collection' do
  scenario 'can see website reviews' do
    create_rating(5)
    visit '/rating'
    expect(page).to_not have_content(1)
    expect(page).to have_content(5)
  end

  scenario 'rating is persistent' do
    create_rating(2)
    visit '/rating'
    expect(page).to_not have_content(5)
    expect(page).to have_content(2)
    create_rating(5)
    visit '/rating'
    expect(page).to have_content(2)
    expect(page).to have_content(5)
  end
end
