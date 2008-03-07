$:.unshift File.dirname(__FILE__)
require 'raffle/version'

class Raffle
  
  include RaffleInfo
  attr_accessor :participants
  
  def initialize(participants = [])
    @participants = participants
  end
  
  def pick_a_winner
     srand Time.now.to_i
     winner = participants[rand(participants.length)]
     remove_participant(winner)
     return winner
   end

  protected
  
  def remove_participant(participant)
    @participants = @participants.reject{|ppt| ppt == participant}
  end
end