/-  *post, store=graph-store, *resource, *crow
::
::  croak:
::    [%string `!<a command>]                            ::  e.g. [%string `!an-octopus]
::
::  use:
::    use HotPot.ai's Art-Maker to take an existing image and
::    a user generated prompt and generate an AI iteration
::    of the art, using the user's prompt.
::
::    a filter prevents users from spamming the same
::    thing over and over (on purpose or accidentally)
::    (https://knowyourmeme.com/memes/sites/r9k)
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
    =+  mind=!<((unit [load=@ keys=@t said=(set (list content)) mate=(map ship @ud)]) mynd)
    ?~  mind
      =-  `[%says me - res mynd]
      [%text 'I am not properly configured - you need to reload me']~
    ::
    =,  u.mind
    |^  ^-  [(list card:agent:gall) meme]
    ?.  =(our.bol entity.res)  `[%dead me !>(~)]
    ?~  exam=`(unit @t)`(test contents.post.sadle)  `[%keep me mynd]
    ?~  who=(~(get by mate) author.post.sadle)
      =-  [(make u.exam) [%keep me -]]
      !>  ^-  (unit [@ @t (set (list content)) (map ship @ud)])
      [~ [load keys (~(put in said) contents.post.sadle) (~(put by mate) author.post.sadle 1)]]
    ?:  (lte 3 u.who)  `[%says me [%text 'over-limit!']~ res mynd]
    =-  [(make u.exam) [%keep me -]]
    !>  ^-  (unit [@ @t (set (list content)) (map ship @ud)])
    [~ [load keys (~(put in said) contents.post.sadle) (~(put by mate) author.post.sadle +(u.who))]]
    ::
    ++  test                                             ::  pattern checks the input to make sure it's valid
      |=  l=(list content:store)
      ^-  (unit @t)
      ?~  l  ~
      ?.  =(1 (lent l))  ~
      ?.  ?=([%text @] i.l)  ~
      ?~  msg=(trip text.i.l)  ~
      ?.  (lte 11 (lent msg))  ~
      `(crip (weld "an octopus" (oust [0 11] `tape`msg)))
    ::
    ++  make                                             ::  starts a thread to poke HotPot.ai
      |=  t=@t
      ^-  (list card:agent:gall)
      =/  shak=@t  (crip (a-co:co (end 6 (sham eny.bol))))
      =/  body=@
        %+  rap  3
        :~  '--'  shak  '\0d\0a'
            'Content-Disposition: form-data; name="inputText"'  '\0d\0a'
            '\0d\0a'
            t  '\0d\0a'
          ::
            '--'  shak  '\0d\0a'
            'Content-Disposition: form-data; name="seedImage"; filename="quartus-start.png"'  '\0d\0a'
            'Content-Type: image/png'  '\0d\0a'
            '\0d\0a'
            load  '\0d\0a'
          ::
            '--'  shak  '\0d\0a'
            'Content-Disposition: form-data; name="style";'  '\0d\0a'
            '\0d\0a'
            'pencilSketch'  '\0d\0a'
          ::
            '--'  shak  '\0d\0a'
            'Content-Disposition: form-data; name="outputWidth"'  '\0d\0a'
            '\0d\0a'
            '256'  '\0d\0a'
            '--'  shak  '--'  '\0d\0a'
        ==
      =/  reqs=request:http
        :^    %'POST'
            'https://api.hotpot.ai/make-art'
          :~  'Authorization'^keys
              'Content-Type'^(cat 3 'multipart/form-data; boundary=' shak)
          ==
        `(as-octs:mimes:html body)
      
      =+  tid=`@ta`(cat 3 'hotlink_' (scot %da now.bol))
      =;  sip=[(unit @ta) (unit @ta) =beak =term =vase]
        :_  ~
        :^  %pass  /hotlink/(scot %da now.bol)  %agent
        [[our.bol %spider] %poke %spider-start !>(sip)]
      :^  ~  `tid  byk.bol(r da+now.bol)
      :-  %hotlink
      !>  ^-  (unit [res=resource:store req=request:http])
      [~ [res reqs]]
    --
  ==
--