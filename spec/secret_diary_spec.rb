require './lib/secret_diary.rb'

secret_diary = SecretDiary.new

describe "the lock diary method" do
  it "Has the ability to lock" do
    secret_diary = SecretDiary.new
    secret_diary.lock() == "Diary now locked!"
  end
end


