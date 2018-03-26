ActiveRecord::Schema.define(version: 20180325185424) do
  create_table 'ratings', force: :cascade do |t|
    t.integer 'score'
  end
end
