require './lib/lock.rb'
  
describe Lock do

  describe 'the lock method' do
    it 'Has the ability to lock' do
      subject.unlock
      expect{ subject.lock }.to change{ subject.locked? }.to true
    end
  end

  describe 'the unlock method' do
    it 'Has the ability to unlock' do
      expect{ subject.unlock }.to change{ subject.locked? }.to false
    end
  end

end
