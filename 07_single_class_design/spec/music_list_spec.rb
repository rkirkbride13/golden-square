require 'music_list'

RSpec.describe TrackList do

  it "Adds a single track and prints it" do
    tracks = TrackList.new
    tracks.add_track("Song 1")
    expect(tracks.print_list).to eq "Your list of tracks: Song 1"
  end

  it "Adds two tracks and then prints the list" do
    tracks = TrackList.new
    tracks.add_track("Song 1")
    tracks.add_track("Under pressure")
    expect(tracks.print_list).to eq "Your list of tracks: Song 1, Under pressure"
  end

  it "Add several tracks and then prints the list" do
    tracks = TrackList.new
    tracks.add_track("Song 1")
    tracks.add_track("Under pressure")
    tracks.add_track("song title")
    tracks.add_track("Smells like teen spirit")
    expect(tracks.print_list).to eq "Your list of tracks: Song 1, Under pressure, song title, Smells like teen spirit"
  end

  it "throw an error if there are no track and we ask it to print list" do
    tracks = TrackList.new
    expect{tracks.print_list}.to raise_error "There are no tracks to print"
  end
end