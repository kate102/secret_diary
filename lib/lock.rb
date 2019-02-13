# This is the Lock Class
#

class Lock
  attr_writer :locked

  def initialize
    @locked = true
  end

  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end

  def locked?
    @locked
  end

end 
