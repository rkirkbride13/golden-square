class TrackList

  def initialize
    @tracks = []
  end

  def add_track(track)
    @tracks << track
  end

  def print_list
    fail "There are no tracks to print" if @tracks.empty?
    "Your list of tracks: #{@tracks.join(", ")}"
  end

end