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
|=  qit=vase
=/  m  (strand ,vase)
^-  form:m
;<  =bowl:spider   bind:m  get-bowl
=,  bowl
=+  kit=!<((unit @t) qit)
?~  kit  (pure:m !>(~))
;<  bin=@  bind:m  (fetch-cord (trip u.kit))
;<  ~         bind:m  (wait (add now.bowl ~s3))
(pure:m !>(bin))