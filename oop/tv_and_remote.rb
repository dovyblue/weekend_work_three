# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)
class Tv
  attr_accessor :power, :volume, :channel
  def initialize(tv_info)
    @power = tv_info[:power]
    @volume = tv_info[:volume]
    @channel = tv_info[:channel]
  end
end

class Remote
  attr_accessor :tv
  def initialize
    @tv = Tv.new(power: "on", volume: 10, channel: 92)
  end

  def toggle_power
    tv.power == "off" ? tv.power = "on" : tv.power = "off"
  end

  def increment_volume
    tv.volume += 1
  end

  def decrement_volume
    tv.volume -= 1
  end

  def set_channel(input_channel)
    tv.channel = input_channel
  end
end

remote = Remote.new
p "-----TV 1-----"
puts ""
p "---toggle power---"
p remote.tv.power
remote.toggle_power
p remote.tv.power

p "---increment volume---"
p remote.tv.volume
remote.increment_volume
p remote.tv.volume

p "---decrement volume---"
p remote.tv.volume
remote.decrement_volume
p remote.tv.volume

p "---set channel---"
p remote.tv.channel
remote.set_channel(115)
p remote.tv.channel

remote.tv = Tv.new(power: "off", volume: 4, channel: 114)
p "-----TV 2-----"
puts "" 
p "---toggle power---"
p remote.tv.power
remote.toggle_power
p remote.tv.power

p "---increment volume---"
p remote.tv.volume
remote.increment_volume
p remote.tv.volume

p "---decrement volume---"
p remote.tv.volume
remote.decrement_volume
p remote.tv.volume

p "---set channel---"
p remote.tv.channel
remote.set_channel(110)
p remote.tv.channel
