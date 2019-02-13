# This is the Secret Diary Class
#
class SecretDiary
  attr_writer :locked

  def initialize
    @locked = true
  end

  def lock
    @locked = true
    'Diary now locked!'
  end

  def unlock
    @locked = false
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
    @locked
  end
end
