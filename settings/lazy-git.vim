if has('nvim') && executable('nvr')
  let $EDITOR = "nvr -cc split --remote-wait +'set bufhidden=wipe'"
endif
