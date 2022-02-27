/-  spider, store=graph-store, *post, *resource
/+  *strandio
::
=,  strand=strand:spider
::
::  send a card, but not right now
::  useful for dealing w/ graph-store
::  because it plays with index.post 
::  a little.
::
^-  thread:spider
|=  corv=vase
=/  m  (strand ,vase)
^-  form:m
=+  card=!<((unit card:agent:gall) corv)
?~  card  (pure:m !>(~))
;<  =bowl:spider   bind:m  get-bowl
=,  bowl
;<  ~              bind:m  (sleep ~s0..4000)
;<  ~              bind:m  (send-raw-card u.card)
(pure:m !>(~))