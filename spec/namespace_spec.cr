require "./spec_helper"

module TestModule2
  extend self

  def test_function2
  end

  CONSTANT2 = 1

  class TClass2
  end

  module SubModule2
  end
end

namespace TestModule2 do
  describe "include_module" do
    it "includes constants, classes and methods" do
      TClass2.should eq TestModule2::TClass2
      CONSTANT2.should eq TestModule2::CONSTANT2
      test_function2.should eq TestModule2.test_function2
    end
  end
end
