describe Rating do

  it 'Contains correct properties' do
    rating = Rating.create(score: 2)
    expect(rating.score).to be(2)
  end

  it 'Rating stored within database' do
    expect {Rating.create(score: 5)}.to change {Rating.count}.by 1
  end
end