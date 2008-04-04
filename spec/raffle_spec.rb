require File.dirname(__FILE__) + '/spec_helper.rb'
require File.dirname(__FILE__) + '/../lib/raffle'

def create_raffle
  @raffle = Raffle.new(["matt", "dominic"])
end

describe "a generic Raffle" do
  
  before(:each) do
    create_raffle
  end
  
  it "should be able to create a new instance of itself" do
    lambda { Raffle.new }.should_not raise_error
  end
  
  it "should have participants" do
    @raffle.participants.should == ["matt", "dominic"]
  end
  
  it "should be able to assign participants" do
    @raffle.participants = ["matt", "dominic"]
    @raffle.participants.should == ["matt", "dominic"]
  end
  
  it "should pick a winner" do
    ["matt", "dominic"].include?(@raffle.pick_a_winner).should be_true
  end
  
  it "should remove winners from the participants" do
    amount_of_participants = @raffle.participants.size
    @raffle.pick_a_winner
    @raffle.participants.size.should == amount_of_participants - 1
  end
  
end

describe 'in teasing mode' do
   before(:each) do
     create_raffle
     @raffle.teasing_mode
   end  
    
  it "should be able to run in teasing mode" do
    @raffle.mode.should == 'teasing'
  end
  
end

describe 'randomize' do
  
  ['test1', 'test2', 'test3', 'test4'].randomize.should_not == ['test1', 'test2', 'test3', 'test4']
  ['test1', 'test2', 'test3', 'test4'].randomize.sort.should == ['test1', 'test2', 'test3', 'test4']
  
end