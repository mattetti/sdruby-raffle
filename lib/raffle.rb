$:.unshift File.dirname(__FILE__)
require 'raffle/version'

class Array
  
  def randomize
    a = self.dup
    result = []
    self.length.times do
      result << a.slice!(rand(a.length))
    end
    return result
  end
  
  def randomize!
    a = self.dup
    result = []
    self.length.times do
      result << a.slice!(rand(a.length))
    end
    self.replace result
  end
  
end

class Raffle
  
  include RaffleInfo
  attr_accessor :participants, :mode
  
  def initialize(participants = [])
    @participants = participants
    @mode = 'teasing'
  end
  
  def pick_a_winner
     srand Time.now.to_i
     winner = participants[rand(participants.length)]
     remove_participant(winner)
     if @mode == 'teasing'
       tease_the_loosers(winner)
       "long congratulations to #{winner} sent to STDOUT"
     else
       winner
     end 
   end
   
   def teasing_mode
    @mode = 'teasing'
   end
   
   def normal_mode
    @mode = 'normal'
   end

  protected
  
  def tease_the_loosers(winner)
    p "...and the winner is..."
    @participants.randomize!
    @participants.each do |looser|
      looser(looser)
    end
    p "... #{winner} ... YAY!"
  end
  
  def looser(name)
    sleep 0.5
    p "... #{name} ... NOT"
  end
  
  def remove_participant(participant)
    @participants = @participants.reject{|ppt| ppt == participant}
  end
end