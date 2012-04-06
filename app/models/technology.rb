# == Schema Information
#
# Table name: technologies
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Technology < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true

  has_and_belongs_to_many :projects
end
