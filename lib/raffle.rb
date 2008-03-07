$:.unshift File.dirname(__FILE__)
require 'raffle/version'

class Raffle
  
  include RaffleInfo
  attr_accessor :participants, :mode
  
  def initialize(participants = [])
    @participants = participants
    @mode = 'normal'
  end
  
  def pick_a_winner
     srand Time.now.to_i
     winner = participants[rand(participants.length)]
     remove_participant(winner)
     if @mode == 'teasing'
       tease_the_loosers(winner)
       "congratulations #{winner}!"
     else
       winner
     end 
   end
   
   def teasing_mode
    @mode = 'teasing'
   end

  protected
  
  def tease_the_loosers(winner)
    p "...and the winner is..."
    @participants.each do |looser|
      looser(looser)
    end
    p "... #{winner} ... YAY!"
  end
  
  def looser(name)
    sleep 1
    p "... #{name} ... NOT"
  end
  
  def remove_participant(participant)
    @participants = @participants.reject{|ppt| ppt == participant}
  end
end