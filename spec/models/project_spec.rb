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
#  start_date  :date
#  end_date    :date
#
require 'spec_helper'

describe Project do

  let(:java) { FactoryGirl.create(:technology) }
  before { @project = Project.new(title: "Web Development", role: "Software Developer", customer: "Google",
                                  description: "Web development", technologies: [java],
                                  start_date: 10.days.ago, end_date: 1.day.ago) }
  subject { @project }

  it { should respond_to :title }
  it { should respond_to :role }
  it { should respond_to :customer }
  it { should respond_to :description }
  it { should respond_to :technologies }
  it { should respond_to :start_date }
  it { should respond_to :end_date }
  it { should be_valid }

end
