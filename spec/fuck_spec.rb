require 'spec_helper'
require 'benchmark'

describe Fuck do
  describe "sort" do
    it "sorts" do
      [1,3,5,4].sort.should == [1,3,4,5]
    end

    it "sorts slower than the real sort" do
      a = (1..1000).map{ |x| rand(10000) }
      sort_time = Benchmark.realtime { a.sort }
      real_sort_time = Benchmark.realtime { a.real_sort }
      
      sort_time.should > real_sort_time
    end
  end

  describe "map" do
    it "maps" do
      [1,2,3].map{ |x| x + 1 }.should == [2,3,4]
    end

    it "maps slower than the real map" do
      a = (1..1000).map{ |x| rand(10000) }

      map_time = Benchmark.realtime { a.map{|x| x + 1} }
      real_map_time = Benchmark.realtime { a.real_map{|x| x + 1} }

      map_time.should > real_map_time
    end
  end
end

