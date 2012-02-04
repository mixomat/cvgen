class Project < ActiveRecord::Base
  validates :title, :presence => true
  validates :description, :presence => true
  validates :customer, :presence => true
  validates :role, :presence => true

  has_and_belongs_to_many :technologies

  accepts_nested_attributes_for :technologies
end
