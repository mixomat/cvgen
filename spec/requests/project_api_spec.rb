require 'spec_helper'

describe "Projects API" do
  before(:each) { @project = create(:project, technologies: [create(:technology)]) }

  it 'sends a list of projects' do
    get '/api/projects'

    expect(response).to be_success
    expect(json.length).to eq(1)
    expect(json[0]['title']).to eq(@project.title)
  end

  it 'filters the list of projects when highlight is true' do
    get '/api/projects?highlight=true'

    expect(response).to be_success
    expect(json.length).to eq(0)
  end

  it 'doesn\'t filter the list of projects when highlight is false' do
    get '/api/projects?highlight=false'

    expect(response).to be_success
    expect(json.length).to eq(1)
  end
end