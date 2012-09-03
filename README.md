# align.tmbundle

This is a greatly improved alignment command. Rather than just aligning
assignments it will align all sorts of things.

This is a work in progress and I've published this bundle so people can give it
a try. In the long term I hope this will get merged into TextMate.

## Installation

    cd ~/Library/Application\ Support/Avian/Bundles
    git clone https://github.com/mads379/align.tmbundle.git

## How to add alignment rules

Open the bundle editor (ctrl+alt+cmd+b). Find the Align bundle. Hit `cmd+n` and
choose settings. Set the scope you want, fx `source.ruby` and add something like
the following.

    { shellVariables = (
        { name = 'TM_SOURCE_ALIGNMENT_PATTERN';
          value = '[
          { 
            "regexp" : "=>", 
            "spacing" : "before"
          },
          { 
            "regexp" : ":", 
            "spacing" : "after"
          }]';
        },
      );
    }

The `value` is a simply a JSON array with objects that has a `regexp` and `spacing`
property. The `regexp` is the regular expression to match after and spacing can be
either `before` or `after` depending on weather you want in insert the spaces before
or after the matched text.

## Missing features

- Left/right justify captures
- Enable scope specific block separators (currently uses blank lines and indentation to find blocks of code)

## History

- Original discussion: http://old.nabble.com/Align-Source-td31636561.html
- Original proof of concept: https://gist.github.com/988793