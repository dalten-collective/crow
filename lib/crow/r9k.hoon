/-  *post, store=graph-store, *resource, *crow
::
::  croak:
::    [%string ~]
::
::  use:
::    r9k applies a Robot9000-like filter to a chat
::    (https://knowyourmeme.com/memes/sites/r9k)
::  
::    it can only be applied to chats you own as it
::    will attempt to delete messages that have previously
::    been seen
::  
::    posting "!reset" as the host of crow/the resource, 
::    will reset the history of messages that have been said
::    allowing reposts
::
|_  [bol=bowl:gall mynd=vase]
++  seed
  |=  [me=@tas =post =res]
  ^-  [(list card:agent:gall) meme]
  =+  mind=!<((unit (set (list content))) mynd)
  ?~  mind
    =+  mem=[~ (sy [contents.post ~])]
    `[%keep me !>(`(unit (set (list content)))`mem)]
  |^  ^-  [(list card:agent:gall) meme]
  ?.  =(our.bol entity.res)  `[%dead me !>(~)]
  ::  secret reset command - only from us
  ?:  ?&  =(our.bol author.post)
          ?=([[%text @] ~] contents.post)
      ==
    ?:  =('!reset' ->.contents.post)
      `[%dead me !>(~)]
    `[%keep me mynd]
  (beep contents.post)
  ::
  ++  beep
    |=  l=(list content)
    ?.  (~(has in u.mind) l)
      =.  mind  `(~(put in u.mind) contents.post)
      `[%keep me !>(`(unit (set (list content)))`mind)]
    (boop l)
  ::
  ++  boop
    |=  l=(list content)
    ^-  [(list card:agent:gall) meme]
    ::~&  index.post
    =/  dup=update
      :-  (add now.bol ~s1)
      [%remove-posts res (sy ~[index.post])] 
    :_  :^    %says
            me
          ~[[%mention author.post] [%text ' fail!']]
        !>(`(unit (set (list content)))`mind)
    ^-  (list card:agent:gall)
    :~  :*
      %pass   /roboto/(scot %uv (sham eny.bol))
      %agent  [our.bol %graph-store]
      %poke   %graph-update-3  !>(dup)
    ==  ==
  -- 
--