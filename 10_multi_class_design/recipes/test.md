# {{PROBLEM}} Multi-Class Planned Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

## 2. Design the Class System

_Consider diagramming out the classes and their relationships. Take care to
focus on the details you see as important, not everything. The diagram below
uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com_

```


    ┌─────────────────────────┐
    │ Diary                   │
    │ -------                 │
    │ - initialize            │
    │ - add(entry)            │
    │ - reading_time(wpm)     │
    │ - count_words           │
    │ -find_best_entry(wpm,min│
    └────────────┬────────────┘
                 │
                 │
                 │
   ┌─────────────►────────────────┐
   │             │                │
   │  DiaryEntry │                │
   │  ---------- │                │
   │  - initialize(title,cont,num)│
   │  - title                     │
   │  - contents                  │
   │  - count_words               │
   │  - phone_number              │
   │  - reading_time(wpm)         │
   └──────────────────────────────┘

   ┌────────────────┐
   │                │
   │  TodoList      │
   │  ----------    │
   │  -initialize   │
   │  -add(task)    │
   │  -list         │
   └────────┬───────┘
            │
            │
            │
  ┌─────────▼──────────┐
  │  Todo              │
  │  ------------      │
  │  -initialize(todo) │
  │  -item             │
  │                    │
  └────────────────────┘


```

_Also design the interface of each class in more detail._

```ruby

class Diary

  def initialize
  end

  def add(entry)
  end

  def count_words
  end

  def reading_time(wpm)
  end

  def find_best_entry(wpm,minutes)
  end

  def scan_for_number
  end

end

class DiaryEntry

  def initialize(title,contents)
  end

  def title
  end

  def contents
  end

  def count_words
  end

  def reading_time(wpm)
  end

end

class TodoList

  def initialize
  end
  
  def list
  end
  
  def add(task)
  end

end

class Todo

  def initialize(task)
  end

  def task
  end

end

```

## 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

```ruby
# EXAMPLE

# Gets all tracks
library = MusicLibrary.new
track_1 = Track.new("Carte Blanche", "Veracocha")
track_2 = Track.new("Synaesthesia", "The Thrillseekers")
library.add(track_1)
library.add(track_2)
library.all # => [track_1, track_2]
```

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby
# EXAMPLE

# Constructs a track
track = Track.new("Carte Blanche", "Veracocha")
track.title # => "Carte Blanche"
```

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._

