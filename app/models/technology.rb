class Technology < ActiveRecord::Base
  validates :name, :presence => true

  belongs_to :project
end
