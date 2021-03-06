require 'spec_helper'

describe "Projects API" do
  before(:each) { @project = create(:project, technologies: [create(:technology)]) }

  it 'sends a list of projects' do
    get '/api/projects'

    expect(response).to be_success
    expect(json[0]['title']).to eq(@project.title)
  end
end