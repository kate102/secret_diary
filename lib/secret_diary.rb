class SecretDiary

  @locked

  def initialize
    p "Creating secret diary"
    @locked = true
  end

  def lock
    @locked = true
    "Diary now locked!"
  end

  def unlock
    @locked = false
    "Diary now unlocked!"
  end

  def add_entry
    "Entry Added"
  end

  def get_entry
    "Entry Retrieved"
  end

  def locked?
    @locked
  end

end

