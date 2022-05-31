/-  spider, store=graph-store, *post, *resource
/+  *strandio
::
=,  strand=strand:spider
::
::  talk to hotpot and ask for a url of an image,
|%
+$  ccru  (unit client-response:iris)
--
::
^-  thread:spider
|=  qit=vase
=/  m  (strand ,vase)
^-  form:m
=+  kit=!<((unit [res=resource:store req=request:http]) qit)
?~  kit  (pure:m !>(~))
=,  u.kit
::
;<  =bowl:spider   bind:m  get-bowl
=,  bowl
::
;<  ~              bind:m  (send-request req)            ::  request a POST
;<  =ccru          bind:m  take-maybe-response           ::  get a response
;<  ~              bind:m  (wait (add now ~s10))
?~  ccru  (pure:m !>(~))
::
;<  resp=cord      bind:m  (extract-body u.ccru)
?~  jun=(de-json:html resp)  (pure:m !>(~))
::
=+  tim=`time`(add now ~s1)
=/  lactate=update:store
  :-  tim  :+  %add-nodes  res
  %-  ~(put by *(map index:store node:store))
  :-  ~[tim]  
  ^-  node:store  :_  [%empty ~]
  :-  %&  :^  our  ~[tim]  now
  [[%url ((ot:dejs:format ['url' so:dejs:format]~) u.jun)]~ ~ ~]
=/  drac=card:agent:gall
  :^  %pass  /quartus/nft/(scot %da tim)  %agent  
  [[our %graph-store] %poke %graph-update-3 !>(`update:store`lactate)]
;<  ~              bind:m  (send-raw-card drac)
(pure:m !>(~))
