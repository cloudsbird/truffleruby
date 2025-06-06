require_relative '../../spec_helper'
require_relative 'fixtures/set_like'

describe "Set#==" do
  it "returns true when the passed Object is a Set and self and the Object contain the same elements" do
    Set[].should == Set[]
    Set[1, 2, 3].should == Set[1, 2, 3]
    Set["1", "2", "3"].should == Set["1", "2", "3"]

    Set[1, 2, 3].should_not == Set[1.0, 2, 3]
    Set[1, 2, 3].should_not == [1, 2, 3]
  end

  it "does not depend on the order of the elements" do
    Set[1, 2, 3].should == Set[3, 2, 1]
    Set[:a, "b", ?c].should == Set[?c, "b", :a]
  end

  it "does not depend on the order of nested Sets" do
    Set[Set[1], Set[2], Set[3]].should == Set[Set[3], Set[2], Set[1]]

    set1 = Set[Set["a", "b"], Set["c", "d"], Set["e", "f"]]
    set2 = Set[Set["c", "d"], Set["a", "b"], Set["e", "f"]]
    set1.should == set2
  end

  ruby_version_is ""..."3.5" do
    context "when comparing to a Set-like object" do
      it "returns true when a Set and a Set-like object contain the same elements" do
        Set[1, 2, 3].should == SetSpecs::SetLike.new([1, 2, 3])
      end
    end
  end
end
