require './lib/diary.rb'

describe Diary do

 describe 'the add an entry diary method' do
   it 'Has the ability to add an entry' do
     expect(subject.add_entry('text')).to eq ["text"]
   end
 end

 describe 'the retrieve an entry diary method' do
   it 'Has the ability to retrieve an entry' do
     subject.add_entry('text')
     expect(subject.retrieve_entries).to eq "text"
   end
 end

end
