require 'faker'

User.create!(email: "go@further.always", password: "freedom123", admin: false, name: "Roman")
User.create!(email: "admin_go@further.always", password: "freedom123", admin: true, name: "Admin")

AdvCategory.create!(name: "Category1")
10.times do |n|
  AdvCategory.create!(name: "Category#{n}", parent_category_id: AdvCategory.find(rand(1..(n + 1))).id)
end

10.times do |n|
  Tag.create!(:name => Faker::Lorem.word)
end

100.times do |n|
  Advertisement.create!(name: Faker::Lorem.sentence(1), text: Faker::Lorem.paragraph, adv_category_id: AdvCategory.find(rand(1..10)).id, owner_id: User.find(rand(1..2)).id, tag_ids: Tag.find(rand(1..10)).id)
end