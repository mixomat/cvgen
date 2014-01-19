require 'spec_helper'

describe Api::ProjectsController do

  describe 'GET :index' do
    before { @project = create(:project, technologies: [create(:technology)]) }

    it 'should assign @projects' do
      get :index
      expect(assigns(:projects)).to eq([@project])
    end

    it 'should have a 200 response code' do
      get :index
      expect(response.status).to eq(200)
      expect(response.headers['Content-Type']).to eq('application/json; charset=utf-8')
    end
  end
end