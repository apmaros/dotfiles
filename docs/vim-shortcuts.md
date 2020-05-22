# Vim Shortcuts
List containing _some_ useful vim shortcuts to navigate, edit text and manage windows. It is not exhaustive list and many basic shortcuts were ommited to reduce clutter.

## Document Navigation
- `^` - beginning of line
- `$` - end of line
- `g` - beginning of the file
- `G` - end of the file
- `a` - insert after cursor
- `w` - end of next word
- `b` - beginning of previous word
- `ZZ` - close vim alias for :wq
- `(` - previous sentence
- `)` - next sentence
- `{` - previous paragraph
- `}` - next paragraph
- `S-tab` - move between opened buffers

## Editing
- `u`   - undu
- `C-c` - redo

- `:%s/old/new/g` - replace all old with new with prompt
- `:%s/old/new/gc` - replace all old with new

## Buffers
Buffer is opened file in the window. It is possible to have multiple buffers opened at the same time.
- `C-d` - close buffer with window
- `C-b` - show all buffers

## Windows
Window is a container for one or more buffers
- `C-w-w` - next window
- `C-w-v` - split window vertically
- `C-w-s` - split window horizontally

