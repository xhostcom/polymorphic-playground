# == Schema Information
#
# Table name: posts
#
#  id          :uuid             not null, primary key
#  description :text             default(""), not null
#  title       :string           default(""), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :uuid             not null
#
# Indexes
#
#  index_posts_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :post do
    title { "MyString" }
    description { "MyText" }
    user { nil }
  end
end
