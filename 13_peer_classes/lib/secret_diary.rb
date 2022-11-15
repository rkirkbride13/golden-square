# File: lib/secret_diary.rb

class SecretDiary
  def initialize(diary) # diary is an instance of Diary
    @locked = true
    @diary = diary
  end

  def read
    fail "Go away!" if @locked
    return @diary.read
    # Raises the error "Go away!" if the diary is locked
    # Returns the diary's contents if the diary is unlocked
    # The diary starts off locked
  end

  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end
end