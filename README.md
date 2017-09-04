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
choose settings. 

In the new setting item, first set its name (something like `Alignment Patterns (yourLanguage)` and scope (e.g `source.yourLanguage`). Then add something like
the following as content for the setting:

    { shellVariables = (
        { name = 'TM_SOURCE_ALIGNMENT_PATTERN';
          value = '[
          { 
            "regexp" : "=", 
            "padding" : "before"
          },
          { 
            "regexp" : ":", 
            "padding" : "after"
          }]';
        },
      );
    }

`value` is a JSON array containing a list of `regexp` and `padding` properties. 

This example contains two alignment targets: `=` and `:`

`regexp` is a regular expression which will capture your alignment string. It could be as simple as "=".

`padding` can be set to `before` or `after` depending on whether you wish to insert the padding spaces
before or after the alignment string.

`minimum_spacing_before` and `minimum_spacing_after` can be set to define the minimum spacing surrounding the matched symbol.

### Advanced

You might want a more complex regular expression to capture the alignment string. For instance to capture any of `=`,`+=`, `-=`, `*=`, `/=`, the following would work:

    `\s[+-*\/]?=\s`

## Missing features

- Left/right justify captures
- Enable scope specific block separators (currently uses blank lines and indentation to find blocks of code)

## History

- Original discussion: [http://old.nabble.com/Align-Source-td31636561.html](http://old.nabble.com/Align-Source-td31636561.html)
- Original proof of concept: [https://gist.github.com/988793](https://gist.github.com/988793)
