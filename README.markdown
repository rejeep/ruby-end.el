# Ruby end
Ruby end is a minor mode for Emacs that can be used with `ruby-mode`
to automatically close blocks by inserting `end` when typing a "block
keyword", followed by a space.

## Installation
I recommend installing via ELPA, but manual installation is simple as well:

    (add-to-list 'load-path "/path/to/ruby-end")
    (require 'ruby-end)

## Usage
When `ruby-mode` is started, `ruby-end-mode` will automatically start.

In a Ruby file, try writing a block keyword, such as `class` or `def`
and then `SPC`.

For more information, see comments in `ruby-end.el`.

## Contribution
Contribution is much welcome! Ruby end is tested using
[Ecukes](http://ecukes.info). When Adding new features, please write
tests for them!

To fetch Ecukes:

    $ cd /path/to/ruby-end
    $ git submodule init
    $ git submodule update
    
Run the tests with:

    $ ./util/ecukes/ecukes features
