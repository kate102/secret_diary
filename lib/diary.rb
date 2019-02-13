# This is the Diary Class
#
class Diary

  attr_accessor :entries

  def initialize
    @entries = []
  end

  def add_entry(text)
    @entries << text
  end

  def retrieve_entries
     @entries.first  
  end
end
