require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the Api::ProjectsHelper. For example:
#
# describe Api::ProjectsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
describe Api::ProjectsHelper do
  it "sends a list of projects" do

    get '/api/projects'

    expect(response).to be_success


  end
end
