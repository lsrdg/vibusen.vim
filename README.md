```
__   _(_) |__  _   _ ___  ___ _ __   ~
\ \ / / | '_ \| | | / __|/ _ \ '_ \  ~
 \ V /| | |_) | |_| \__ \  __/ | | |   ~
  \_/ |_|_.__/ \__,_|___/\___|_| |_| ~
                                    
```

This plugin is for Vim users that use Ibus to handle multiple keyboard layouts.

The idea is really simple:

You define (or not) what ibus engine to use on *normal* mode.

You enter insert mode and decide to write in another language. When you leave
the *insert* mode, Vibusen will: 

- Remember which Ibus Engine you were using to type.
- Switch to *normal* mode and change to the default engine.

Now, whenever you are done with your editings (in *normal* mode) and enter
*insert* mode again, Vibusen will call Ibus and restore the engine you were
using to type.

## Instalation

Just use your favorite [plugin
manager](https://github.com/mhinz/vim-galore#managing-plugins). For instance,
with [Vim-plug](https://github.com/junegunn/vim-plug), add this to you
vimrc/init.vim:

```
Plug 'lsrdg/vibusen.vim'
```

## Setup

By default, the engine used to the normal mode is `xkb:us::eng`. If you want to
to change that, add line like the one below to your vimrc (and insert the
desired engine's name between the quotes):

```
    let g:IbusDefaultEngine = 'm17n:ps:phonetic'
```

If you are not sure about what is your favorite engine called, the following
command (typed on the command line) will output the name of the engine you are
using:

```
$ ibus engine
```

If you wanna a list of all engines:

```
$ ibus list-engine
```

## TODO list

- [ ] Test
- [ ] Test again
- [ ] Again test
- [ ] Create docs
