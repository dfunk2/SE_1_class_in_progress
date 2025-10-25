#-------------------------------------------------------------
# Exercise 5 Part 1 (Exception Handling)
#-------------------------------------------------------------

class MentalState 
  attr_reader :online 
  def initialize(online)
    @online = online
  end 
  def auditable?
    # true if the external service is online, otherwise false
    online #returns whatever is passed in 
  end

  def audit!
    # Could fail if external service is offline
    begin 
    if auditable?
      puts "external service is online"
    else 
      raise "external service is offline"
    end
    rescue => e
      puts "external service is #{e.message}"
      return false 
    end
  end

  def do_work
    # Amazing stuff...
    begin 
    if auditable?
      puts "Do things"
    else 
      raise "external service is offline"
    end
    rescue => e
      puts "external service is #{e.message}"
    end
  end
end

#run aduit
audit1 = MentalState.new(true)
audit1.audit!
audit1.do_work

bedtime_mental_state = MentalState.new(true)
class BedtimeMentalState < MentalState ; end

class MorningMentalState < MentalState ; end


def audit_sanity(bedtime_mental_state)
  return 0 unless bedtime_mental_state.auditable?
  if bedtime_mental_state.audit!
    MorningMentalState.new(:ok)
  else 
    MorningMentalState.new(:not_ok)
  end
end

if audit_sanity(bedtime_mental_state) == 0
  puts "error"
else
  new_state = audit_sanity(bedtime_mental_state)
end


#-------------------------------------------------------------
# Exercise 5 Part 2 (Don't Return Null / Null Object Pattern)
#-------------------------------------------------------------


class NullMentalState
  def auditable?; false; end
  def do_work; puts "nothing to do"; end
end

def audit_sanity(bedtime_mental_state)
  return NullMentalState.new unless bedtime_mental_state.auditable?

  if bedtime_mental_state.audit!
    MorningMentalState.new(:ok)
  else 
    MorningMentalState.new(:not_ok)
  end
end

bedtime_mental_state = BedtimeMentalState.new(false)
audit3 = audit_sanity(bedtime_mental_state)
audit3.do_work

# #-------------------------------------------------------------
# # Exercise 5 Part 3 (Wrapping APIs)
# #-------------------------------------------------------------

class CandyMachine
  attr_reader :ready, :machine
  def initialize( machine, ready)
    @ready = ready
    @machine = machine
  end

  def ready?
    @ready
  end

  def make!
    puts "#{@machine} makes 10 pieces of candy"
  end

  def candyMachineWorking
    if ready?
      make!
    else
      puts "sadness"
      begin
        require 'candy_service'
      rescue LoadError => e
      puts " Load error #{e.message}"
      end 
    end
  end
end

machineWorking = CandyMachine.new("gum ball machine", true)
machineWorking.candyMachineWorking

brokenMachine = CandyMachine.new("jelly bean machine", false)
brokenMachine.candyMachineWorking