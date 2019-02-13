# This is the Secret Diary Class
#
# require './lib/lock'
class SecretDiary
  attr_writer :locked

  def initialize
    @lock = Lock.new
  end

  def lock
    @lock.lock
    'Diary now locked!'
  end

  def unlock
    @lock.unlock
    'Diary now unlocked!'
  end

  def add_entry
    fail 'Diary is locked' if locked?
    'Entry Added'
  end

  def retrieve_entries
    fail 'Diary is locked' if locked?
    'Entry Retrieved'
  end

  def locked?
    @lock.locked?
  end
end

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
