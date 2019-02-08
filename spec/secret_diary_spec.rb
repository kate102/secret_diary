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

describe "the add an entry diary method" do
  it "Has the ability to add an entry" do
    sd = SecretDiary.new
    expect(sd.add_entry).to eq "Entry Added"
  end
end

describe "the get an entry diary method" do
  it "Has the ability to get an entry" do
    sd = SecretDiary.new
    expect(sd.get_entry).to eq "Entry Retrieved"
  end
end

describe "check that a new diary is locked when created" do
  it "returns true when asked if a new diary is locked" do
    sd = SecretDiary.new
    expect(sd.locked?).to eq true
  end
end

