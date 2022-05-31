/-  *post, store=graph-store, *resource, *crow
::
::  croak(s):
::    [%string `'!next']
::    [%string `'!full']
::    [%string `'!dump']
::
::  use:
::    provided with a (unit (map @da (list content))), schoolbot
::    will give a user an upcoming class or homework deadline
::    into the chat to which this bot is assigned.
::
::    it's also hard-coded to point to a notebook post that has
::    the full schedule - we'll change this later.
::  
::
|_  [bol=bowl:gall mynd=vase]
++  seed
  |=  [me=@tas =sadle =res]
  ^-  [(list card:agent:gall) meme]
  ?+    -.sadle
    =-  `[%says me - res mynd]
    [%text 'I am not configured to ride non-`post` `sadle`s']~
  ::
      %post
    ?~  mind=!<((unit (map @da (list content))) mynd)  `[%keep me mynd]
    |^
    ^-  [(list card:agent:gall) meme]
    ::  secret reset command - only from us
    ?+    contents.post.sadle                           `[%keep me mynd]
        [[%text @] ~]
      =/  slip=(unit (list @t))
        (slice ->.contents.post.sadle)
      ?~  slip                                          `[%keep me mynd]
      ?~  slop=u.slip                                   `[%keep me mynd]
      ?:  =('!next' i.slop)
        (slick now.bol u.mind)
      ?:  =('!full' i.slop)  `[%says me slack res mynd]
      ?.  =('!dump' i.slop)                             `[%keep me mynd]
      ?:(=(our.bol author.post.sadle) `[%dead me !>(~)] `[%keep me mynd])
    ==
    ::
    ++  slice
      |=  curd=cord
      %+  rush  curd
      %+  ifix  [(star ace) (star ace)]
      %+  more  (plus (mask " \0a"))
      (cook crip (plus ;~(less (mask " \0a") next)))
    ::
    ++  slack
      :~  [%text 'The full schedule is available here:']
          :-  %reference
          :+  %graph  [~hiddev-dannut %new-hooniverse]
          :-  [~hiddev-dannut %administration-5989]
          ~[170.141.184.505.507.393.165.707.031.257.794.215.936]
      ==
    ::
    ++  slick
      |=  [n=@da m=(map @da (list content:store))]
      ^-  [(list card:agent:gall) meme]
      =/  remaining-dates=(list @da)
        %-  sort  :_  lth
        %+  murn  ~(tap in ~(key by m))
        |=(i=@da ?.((gte i n) ~ [~ i]))
      ?~  dat=remaining-dates  `[%says me [%text 'til next time!']~ res mynd]
      ?.  (~(has by m) i.dat)                          `[%keep me mynd]
      =+  dis=(~(got by m) i.dat)
      =.  dis  [[%text (crip "{(trip (scot %dr (sub i.dat now.bol)))} Remaining Until ")] dis]
      `[%says me dis res mynd]
    --
  ==
--