# Overview
In this assignment, you'll learn how to build a simple web scraper to collect and process text data. More specifically, you'll write a small library (set of Python functions) for collecting song lyrics given an artist.

# Instructions
For this assignment, you'll write the code necessary to scrape lyrics for a desired artist. Begin by following this link (Links to an external site.)Links to an external site. to create your own private repository in the GitHub organization. Your code should be structured such that one can easily execute your scraping functions for a given artist. There are three deliverables for this assignment:

- A set of functions necessary for scraping the lyrics of a specific artist (in a .py file)
- An example of how you could implement your functions for a particular artist (in a .ipynb file)
- A file of the output of your example (in a .csv file)
# Output Data
The specific approach that you take to structuring your code is up to you, but the final output .csv data should have the following columns (each row is a song):

- Column 1: artist
- Column 2: album
- Column 3: song title
- Column 4: URL of song lyrics
- Column 5: Song lyrics
- Column 6: Number of words in the song
- Column 7: Most common non-stop word in the song
# Scraping Data
The actual scraping of data should happen in two steps:

- Given an **artist**, identify all of their albums, songs, and links to songs
- Given a set of song links, collect the lyrics to each song
In order to do this, you'll need to understand the structure of your lyrics site. The site you use is up to you, but all of this information should be available on lyrics.com

# Processing Data
Once you've scraped the data, you'll need to do some simple text analysis to generate your columns of interest: 

Count the number of words in each song
Identify the most common word that is not a "stop word". I suggest you get the list of stop words a library such as nltk. After removing stop words, count the most common (hint: you can probably find a library to do this easily).
You should implement these steps in relevant functions in your library so that you can implement the steps as outlined below. 

# Example Implementation
In an iPython (Jupyter) notebook, you should demonstrate the implementation of your data scraping functions with a particular artist. This should be a short script in which you can simply set an artist, and run your scraping functions. It may look something like this:
```
# Import your functions
import lyrics as l

# Get songs
band = 'Adele'
songs = l.get_songs(band) 

# Get lyrics -- internally, this should call another function in your library, such as get_lyrics()
lyrics = l.get_all_lyrics(songs)

# Save data -- this function should identify the name of the artist and use it in the .csv file it saves
l.save_lyrics(lyrics)
```
# Submission
Please submit the URL of your GitHub repository to Canvas for this assignment.