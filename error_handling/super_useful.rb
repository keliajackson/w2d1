
# PHASE 2
def convert_to_int(str)
  Integer(str)
rescue ArgumentError => e 
  puts e.message 
  nil
end

# PHASE 3
class InputError < StandardError
end

FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else 
    raise InputError.new "That's not a fruit" 
  end 
end

def feed_me_a_fruit
  begin
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit) 
  rescue InputError => e
    puts e.message
    puts "Feed coffee to retry"
    drink = gets.chomp
      if drink == "coffee"
        retry 
      else
        raise "Monster is no longer friendly"
      end
  end
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    if yrs_known < 5
      raise "we're not best friends"
    
    end
    if name.empty? || fav_pastime.empty?
      raise "name or fave pastime not given"
    end
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


