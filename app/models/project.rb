class Project < ActiveRecord::Base
  validates :title, :description, :customer, :role, :technologies, :presence => true
  
  has_and_belongs_to_many :technologies
  accepts_nested_attributes_for :technologies
end
