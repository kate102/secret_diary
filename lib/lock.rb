# This is the Lock Class
#

class Lock
  attr_writer :locked

  def initialize
    @locked = true
  end

  def lock
    @locked = true
    'Lock now locked!'
  end

  def unlock
    @locked = false
    'Lock now unlocked!'
  end

  def locked?
    @locked
  end

end 
