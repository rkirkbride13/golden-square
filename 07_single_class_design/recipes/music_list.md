# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class TrackList
  def initialize
    # initialize with an empty array called tracks
  end

  def add_track(track) # track is a string
    # No return value
    # pushes track into track array
  end

  def print_list
    # Throws an exception if no tracks are listed
    # Otherwise, returns a string with a list of tracks
  end

end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
tracks = TrackList.new
tracks.add_track("Song 1")
expect(tracks.print_list).to eq "Your list of track: Song 1"

# 2
tracks = TrackList.new
tracks.add_track("Song 1")
tracks.add_track("Under pressure")
expect(tracks.print_list).to eq "Your list of track: Song 1, Under pressure"

# 3
tracks = TrackList.new
tracks.add_track("Song 1")
tracks.add_track("Under pressure")
tracks.add_track("song title")
expect(tracks.print_list).to eq "Your list of track: Song 1, Under pressure, song title"

# 4
tracks = TrackList.new
expect{tracks.print_list}.to raise_error "There are no tracks to print"

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->
