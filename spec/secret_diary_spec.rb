require './lib/secret_diary.rb'

# describe SecretDiary do

# Arrange
secret_diary = SecretDiary.new

describe "the lock diary method" do
  it "Has the ability to lock" do
    sd = SecretDiary.new
    expect(sd.lock).to eq "Diary now locked!"
  end
end

describe "the unlock diary method" do
  it "Has the ability to unlock" do
    sd = SecretDiary.new
    expect(sd.unlock).to eq "Diary now unlocked!"
  end
end

