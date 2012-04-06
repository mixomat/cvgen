# == Schema Information
#
# Table name: projects
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  role        :string(255)
#  customer    :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Project < ActiveRecord::Base
  validates :title, :description, :customer, :role, :technologies, :presence => true
  
  has_and_belongs_to_many :technologies
  accepts_nested_attributes_for :technologies
end
