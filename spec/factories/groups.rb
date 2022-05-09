# frozen_string_literal: true

# == Schema Information
#
# Table name: groups
#
#  id                     :integer          not null, primary key
#  description_ciphertext :string
#  name                   :string
#  service                :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
FactoryBot.define do
  factory :group do
    type { '' }
    name { 'MyString' }
    description { 'MyString' }
  end
end
