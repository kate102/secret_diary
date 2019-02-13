require './lib/secret_diary.rb'

describe SecretDiary do
  # let (:lock) { double(:lock) }

  describe 'the lock diary method' do
    it 'Has the ability to lock' do
      expect(subject.lock).to eq 'Diary now locked!'
    end
  end

  describe 'the unlock diary method' do
    it 'Has the ability to unlock' do
      expect(subject.unlock).to eq 'Diary now unlocked!'
    end
  end

# describe 'the add an entry diary method' do
#   it 'Has the ability to add an entry' do
#     sd = SecretDiary.new
#     expect(subject.add_entry).to eq 'Entry Added'
#   end
# end

# describe 'the retrieve an entry diary method' do
#   it 'Has the ability to retrieve an entry' do
#     sd = SecretDiary.new
#     expect(subject.retrieve_entry).to eq 'Entry Retrieved'
#   end
# end

  describe 'check that a new diary is locked when created' do
    it 'returns true when asked if a new diary is locked' do
      expect(subject.locked?).to eq true
    end
  end

  describe 'you can not add diary it because its locked' do
    it 'returns an error when asked to add to a new diary' do
      expect{ subject.add_entry }. to raise_error 'Diary is locked'
    end
  end

  describe 'you can not retrieve an entry it because its locked' do
    it 'returns an error when asked to retrieve from a locked diary' do
      subject.lock
      expect{ subject.retrieve_entries }. to raise_error 'Diary is locked'
    end
  end
end
