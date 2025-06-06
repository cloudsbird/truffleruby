require_relative '../../spec_helper'
require_relative 'fixtures/classes'
require_relative 'shared/accessor'

describe "Struct#members" do
  it "returns an array of attribute names" do
    StructClasses::Car.new.members.should == [:make, :model, :year]
    StructClasses::Car.new('Cadillac').members.should == [:make, :model, :year]
    StructClasses::Ruby.members.should == [:version, :platform]
  end

  it_behaves_like :struct_accessor, :members
end

describe "StructClass#members" do
  it "returns an array of attribute names" do
    StructClasses::Car.members.should == [:make, :model, :year]
  end

  context "class inheriting Struct" do
    it "isn't available in a subclass" do
      StructClasses::StructSubclass.should_not.respond_to?(:members)
    end
  end
end
