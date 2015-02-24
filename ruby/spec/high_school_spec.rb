require 'spec_helper'
require 'high_school'

RSpec.describe 'HighSchool' do

  it "can enroll students" do
    high_school = HighSchool.new(100)
    expect(high_school.vacancies).to eq(100)

    high_school.enroll("Lindsay Weir")
    expect(high_school.vacancies).to eq(99)
  end

  it "tells us who is enrolled" do
    high_school = HighSchool.new(100)
    high_school.enroll("Lindsay Weir")
    high_school.enroll("Sam Weir")
    high_school.enroll("Daniel Desario")

    expect(high_school.students).to eq(["Lindsay Weir", "Sam Weir", "Daniel Desario"])
  end

  it "lets students drop out" do
    high_school = HighSchool.new(100)
    high_school.enroll("Lindsay Weir")
    high_school.enroll("Daniel Desario")
    expect(high_school.students).to eq(["Lindsay Weir", "Daniel Desario"])

    high_school.drop_out("Daniel Desario")
    expect(high_school.dropped_out).to eq(["Daniel Desario"])
    expect(high_school.students).to eq(["Lindsay Weir"])
  end

  it "graduates students to alumni" do
    high_school = HighSchool.new(100)
    high_school.enroll("Lindsay Weir")
    high_school.enroll("Daniel Desario")
    expect(high_school.students).to eq(["Lindsay Weir", "Daniel Desario"])

    high_school.graduate("Lindsay Weir")
    expect(high_school.alumni).to eq(["Lindsay Weir"])
    expect(high_school.students).to eq(["Daniel Desario"])
  end
end
