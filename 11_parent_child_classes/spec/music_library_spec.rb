require 'music_library'

RSpec.describe MusicLibrary do

  context "initialized empty" do
    it "all returns empty" do
      music_library = MusicLibrary.new
      expect(music_library.all).to eq []
    end

    it "gives an empty array after search" do
      music_library = MusicLibrary.new
      expect(music_library.search("title")).to eq []
    end
  end

  context "add two tracks" do
    it "all returns list of all tracks" do
      music_library = MusicLibrary.new
      track_1 = double(:track)
      track_2 = double(:track)
      music_library.add(track_1)
      music_library.add(track_2)
      expect(music_library.all).to eq [track_1, track_2]
    end
  end

end