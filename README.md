# paracusia

*noun*

1. a disorder in the sense of hearing
2. auditory hallucination
3. a weird Ruby script for vocalizing conversations between robots

## Why??

You know, for science.

## Running the thing

Scientists will rejoice in the elegance and simplicity of running paracusia:

`./paracusia.rb /path/to/conversations/directory`

The directory path argument is optional and defaults to `./conversations`.

## Configuring the thing

Put one or more .convo files in the conversations directory, formatted like this:

```
Bruce: Hi, I'm Bruce.
Hysterical: Hello, Bruce, I'm Hysterical! HAHAHAHA
```

The part before the colon gets parsed as the name of the voice to pass to the `say` utility's `-v` option. Paracusia assumes you have all the voices you use installed on your Mac because why wouldn't you?

Conversations are vocalized in parallel, simulating a room full of robot conversations. If you don't appreciate the intrinsic scientific value of this script right now, you're probably doing it wrong.

## Requirements

* Ruby
* The `say` utility (standard on OS X) installed in your path
* Any voices you specify in your .convo files
* SCIENCE

## Documentation

This is it. If you want to peer-review this important research, open an issue and together we will make the Science better!

## Inspiration

* Science, of course
* [These nerds](https://netcat.bandcamp.com/)
* Those same nerds' [code](https://github.com/usrbinnc)

