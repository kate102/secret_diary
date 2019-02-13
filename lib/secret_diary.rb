# This is the Secret Diary Class, note that it is a child of the parent class Diary
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
  end

  def unlock
    @lock.unlock
  end

  def add_entry( text = "This is the text")
    fail 'Diary is locked' if locked?
    super.add_entry(text)
  end

  def retrieve_entries
    fail 'Diary is locked' if locked?
    super.add_entry
  end

  def locked?
    @lock.locked?
  end
end


