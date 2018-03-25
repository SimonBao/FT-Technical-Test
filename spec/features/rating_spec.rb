describe Rating do
  it 'creates new rating' do
    expect{Rating.create(rating: 5)}.to change{Rating.count}.by 1
  end
end