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
class Group < ApplicationRecord
  lockbox_encrypts :description
end
