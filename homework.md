# SQL Homework

The Dominion Cinema are having a Marvel Movie Marathon! They have asked you to help maintain their database of movies with times and attendees.

## To access the database:

First, create a database called 'marvel'
```
# terminal
createdb marvel
```

Next, run the provided SQL script to populate your database:
```
# terminal
psql -d marvel -f marvel.sql
```

Use the supplied data as the source of data to answer the questions.  Copy the SQL command you have used to get the answer, and paste it below the question, along with the result they gave.

## Questions

1. Return ALL the data in the 'movies' table.
2. Return ONLY the name column from the 'people' table
3. Return ONLY your name from the 'people' table.
4. The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.
5. Create a new entry in the 'people' table with the name of one of the instructors.
6. Sadly, Graeme has hurt himself and wont be able to make it, Delete his entry from the 'people' table
7. Somehow the list of people includes two people named 'Adam'. Change these entries to the proper names (Jeff 3, Jeff 3.2)
8. The cinema has just heard that they will be holding an exclusive midnight showing of 'Guardians of the Galaxy 2'!! Create a new entry in the 'movies' table to reflect this.
9. The cinema would also like to make the Guardian movies a back to back feature. Update the 'Guardians of the Galaxy' show time from 12:10 to 21:30

## Extension

1. Research how to delete multiple entries from your table in a single command.
