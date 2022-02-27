/-  spider, store=graph-store, *post, *resource, crow, gora
/+  *strandio
::
=,  strand=strand:spider
=,  strand-fail=strand-fail:libstrand:spider
::
::  gora-maker - make a gora or give one to someone for
::  joining a group
::
::  croaks:
::    [%string `'!gora-maker']
::    [%join ~]
::
::  use:
::    set up a gora that you'll issue using either:
::      * '!gora-maker %make <name> <url>'
::      * '!gora-maker %give <gora-id>'
::    wait for people to join the group!
::
::  first a helper core
::
|%
+$  card  card:agent:gall
+$  cred  @t
+$  node  @t
+$  meme  meme:crow
+$  sadl  sadle:crow
+$  gura  gora:gora
+$  sogg  (set gura)
+$  goid  gora-id:gora
+$  mang  manage-gora-1:gora
::
++  space
  |=  [c=cord o=tape]
  ?~(o [c o] [c ' ' o])
::
++  slice
  |=  curd=cord
  %+  rush  curd
  %+  ifix  [(jest '!gora-maker ') (star ace)]
  %+  more  (plus (mask " \0a"))
  (cook crip (plus ;~(less (mask " \0a") next)))
--
::
::  main thread
::
^-  thread:spider
|=  arg=vase
=/  m  (strand ,vase)
^-  form:m
::  first get the bowl
;<  =bowl:spider   bind:m  get-bowl
=,  bowl
::  then get the info
=+  !<([me=@tas sadle=sadl res=resource mynd=vase] arg)
::  setup graph interactions if we need them
=+  ?.  =(our entity.res)  [tik=now tok=%graph-push-hook]
    [tik=(add now ~s1) tok=%graph-store]
?~  mind=!<((unit goid) mynd)  
  ::  if we have no mind and we might have an instruction, check
  ?+    -.sadle  (pure:m !>([%keep me mynd]))
      %post
    =+  con=`(list content:store)`contents.post.sadle
    ?+    con  (pure:m !>([%keep me mynd]))
    ::  if we're in the appropriate form for receiving a gora-id
        [[%text @] ~]
      =/  steps=(unit (list @t))  (slice +.i.con)
      ?~  steps         (pure:m !>([%keep me mynd]))
      ?~  walk=u.steps  (pure:m !>([%keep me mynd]))
      ?+    -.walk      (pure:m !>([%keep me mynd]))
          %give
        ?~  uid=`(unit goid)`(slaw %uv (crip +.walk))
          (pure:m !>([%keep me mynd]))
        =-  (pure:m !>([%says me - res !>(uid)]))
        :~  [%text 'I\'ve been configured to serve ']
            [%text (scot %uv u.uid)]
            [%text ' - make sure I\'m set up to receive ']
            [%text ' `[%join ~]` croaks.']
        ==
      ==
    ::  if we're in the appropriate form for making a gora
        [[%text @] [%url @] [%text @] ~]
      =/  steps=(unit (list @t))  (slice text.i.con)
      ?~  steps         (pure:m !>([%keep me mynd]))
      ?~  walk=u.steps  (pure:m !>([%keep me mynd]))
      ?+    i.walk      (pure:m !>([%keep me mynd]))
          %'%make'
        ::  well then make one
        =/  name=cord  (crip (roll t.walk space))
        =/  curd=card
          :*  %pass   /crow/make/gora/(scot %da now)
              %agent  [our %gora]
              %poke   %gora-man-1
              !>  ^-  mang
              [%mkgora name url.i.t.con %.y ~ %none %none]
          ==
        ;<  ~      bind:m  (send-raw-card curd)
        ;<  ~      bind:m  (sleep ~s10)
        ::  scry gora for new gorae
        ;<  =sogg  bind:m  (scry sogg /gx/gora/made-gora/noun)
        =/  uid=(unit goid)  
          %+  roll  ~(tap in sogg)
          |=  [in=gura out=(unit goid)]
          ?.  ?=(~ out)  out 
          ?.  =(name name.in)  out
          [out gora-id.in]
        ?~  uid
          =-  (pure:m !>([%says me - res mynd]))
          :~  [%text 'I was unable to find the appropriate gora - ']
              [%text 'maybe try `%give`']
          ==
        =-  (pure:m !>([%says me - res !>(uid)]))
        :~  [%text 'I\'ve been configured to serve ']
            [%text (scot %uv u.uid)]
            [%text ' - make sure I\'m set up to receive ']
            [%text ' `[%join ~]` croaks.']
        ==
      ==
    ==
  ==
?+    -.sadle  (pure:m !>([%keep me mynd]))
::  give to a joiner
    %join
  =/  carp=card
    :*  %pass   /gora-maker/(scot %da now)
        %agent  [our %gora]
        %poke   %gora-man-1
        !>(`mang`[%send-give u.mind sip.sadle])
    ==
  ;<  ~          bind:m  (send-raw-card carp)
  (pure:m !>([%keep me mynd]))
==