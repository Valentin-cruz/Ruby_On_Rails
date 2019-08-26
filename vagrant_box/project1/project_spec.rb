# require_relative 'project' # include our Project class in our spec file
# RSpec.describe Project do
#     before(:each) do
#         # updated this block to create two projects
#         @project1 = Project.new('Project 1', 'description 1') # create a new project and make sure we can set the name attribute
#         @project2 = Project.new('Project 2', 'description 2')
#     end
#     it 'has a getter and setter for name attribute' do
#         @project1.name = "Changed Name" # this line would fail if our class did not have a setter method
#         expect(@project1.name).to eq("Changed Name") # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.

#     it 'has a method elevator_pitch to explain name and description' do
#         expect(@project1.elevator_pitch).to eq("Project 1, description 1")
#         expect(@project2.elevator_pitch).to eq("Project 2, description 2")
#     end
# end

require_relative 'project'
RSpec.describe Project do
    it "has a getter and setter for name attribute" do
        project = Project.new
        project.name = "Name"
        expect(project.name).to eq("Name")
    end
    it "has a getter and setter for the description attribute" do
        project = Project.new
        project.description = "Description"
        expect(project.description).to eq("Description")
    end
    it 'has a method elevator_pitch to explain name and description' do
        project = Project.new
        project.name = "Name"
        project.description = "Description"
        expect(project.elevator_pitch).to eq("Name, Description")
    end
end