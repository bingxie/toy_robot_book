 1 require "spec_helper"
 2
 3 RSpec.describe ToyRobot::Robot do
 4   subject { ToyRobot::Robot.new(0) }
 5
 6   it "moves 3 spaces" do
 7     3.times { subject.move }
 8     expect(subject.position).to eq(3)
 9   end
10 end”