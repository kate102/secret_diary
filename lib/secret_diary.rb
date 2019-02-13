# This is the Secret Diary Class
#

require './lib/diary'
require './lib/lock'

class SecretDiary  < Diary
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


