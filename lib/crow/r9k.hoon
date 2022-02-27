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
  |=  [me=@tas =sadle =res]
  ^-  [(list card:agent:gall) meme]
  ?+    -.sadle
    =-  `[%says me - res mynd]
    [%text 'I am not configured to ride non-`post` `sadle`s']~
  ::
      %post
    =+  mind=!<((unit (set (list content))) mynd)
    ?~  mind
      =+  mem=[~ (sy [contents.post.sadle ~])]
      `[%keep me !>(`(unit (set (list content)))`mem)]
    |^  ^-  [(list card:agent:gall) meme]
    ?.  =(our.bol entity.res)  `[%dead me !>(~)]
    ::  secret reset command - only from us
    ?:  ?&  =(our.bol author.post.sadle)
            ?=([[%text @] ~] contents.post.sadle)
        ==
      ?:  =('!reset' ->.contents.post.sadle)
        `[%dead me !>(~)]
      `[%keep me mynd]
    (beep contents.post.sadle)
    ::
    ++  beep
      |=  l=(list content)
      ?.  (~(has in u.mind) l)
        =.  mind  `(~(put in u.mind) contents.post.sadle)
        `[%keep me !>(`(unit (set (list content)))`mind)]
      (boop l)
    ::
    ++  boop
      |=  l=(list content)
      ^-  [(list card:agent:gall) meme]
      :_  :*    %says  me
                ~[[%mention author.post.sadle] [%text ' fail!']]
                res  !>(`(unit (set (list content)))`mind)
          ==
      =+  tid=`@ta`(cat 3 'r9k_' (scot %da now.bol))
      =/  dup=update:store
        :-  (add now.bol ~s2)
        :+  %remove-posts  res
        (sy ~[index.post.sadle])
      =/  cod=card:agent:gall
        :*  %pass   /r9k/(scot %da now.bol)
            %agent  [our.bol %graph-store]
            %poke   %graph-update-3  !>(`update:store`dup)
        ==
      =/  sip=[(unit @ta) (unit @ta) =beak =term =vase]
        :*  ~  `tid  byk.bol(r da+now.bol) 
            %crow-delay-card  !>(`(unit card:agent:gall)`[~ cod])
        ==
      :~  :*
        %pass   /r9k/(scot %da now.bol) 
        %agent  [our.bol %spider]
        %poke   %spider-start  !>(sip)
      ==  ==
    --
  ==
--