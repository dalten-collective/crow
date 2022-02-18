::
:: crow
::
/-  *crow, post, store=graph-store
/+  default-agent, dbug, *resource
::
|%
+$  versioned-state
    $%  state-zero
    ==
::
+$  state-zero
  $:  %0
      =nut
      =caw
      =sky
  ==
::
+$  card      card:agent:gall
+$  content   content:post
+$  eyre-id   @ta
--
::
%-  agent:dbug
=|  state-zero
=*  state  -
^-  agent:gall
=<
::!.
|_  =bowl:gall
+*  this  .
    def   ~(. (default-agent this %|) bowl)
    hc    ~(. +> bowl)
::
++  on-init
  ^-  (quip card _this)
  ~&  >  [%crow %awake]
  :_  this
  ^-  (list card)
  :~  :*
    %pass   `path`[%crow %brain ~]
    %agent  [our.bowl %graph-store]
    %watch  `path`[%updates ~]
  ==  ==
::
++  on-save
  ^-  vase
  !>(state)
::
++  on-load
  |=  ole=vase
  ~&  >>  [%crow %preen]
  =/  old=versioned-state  !<(versioned-state ole)
  ?-    -.old
      %0
    :_  this(state old)
      ^-  (list card)
    :~  :*
      %pass   `path`[%crow %brain ~]
      %agent  [our.bowl %graph-store]
      %watch  `path`[%updates ~]
    ==  ==
  ==
::
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card _this)
  ?>  =(mark %crow-flap)
  =/  vaz=flap  !<(flap vase)
  =^  cards  state
    =,  vaz
    ?-    -.vaz
        %steal
      ~&  >>  [%crow %forgot `@tas`(scot %tas -.rul) +.rul]
      =.  sky
        (~(del ju sky) res rul)
      `state   
    ::
        %teach
      ~&  >  [%crow %learns act]
      =.  caw
        (~(put ju caw) act ack)
      `state
    ::
        %scare
      ~&  >  [%crow %forgot act]
      =.  caw
        (~(del ju caw) act ack)
      `state
    ::
        %treat
      ?.  nut
        ~&  >  [%crow %see %nut]
        :_  state(nut !nut)
        :~  :*
          %pass   `path`[%crow %brain ~]
          %agent  [our.bowl %graph-store]
          %watch  `path`[%updates ~]
        ==  ==
      ~&  >>>  [%crow %want %nut]
      `state(nut !nut)
    ::
        %think
      ~|  [`@tas`'!' %crow %need %rol]
      ?>  !=('' -.rul)
      ?.  ?&  !(~(has ju sky) res rul)
              (~(has in ~(key by caw)) +.rul)
          ==
        ~&  >>>  [`@tas`'!' %crow %need %teach]
        `state
      =.  sky
        (~(put ju sky) res rul)
      ~&  >  [%crow %learn -.rul]
      `state
    ==
  [cards this]
::
++  on-agent
  |=  [=wire =sign:agent:gall]
  |^  ^-  (quip card _this)
  ?+    -.sign
    `this
  ::
      %kick
    :_  this
    ^-  (list card)
    :~  :*
      %pass   wire
      %agent  [our.bowl %graph-store]
      %watch  [%updates ~]
    ==  ==
  ::
      %watch-ack
    ?:  =(~ p.sign)
      `this
    ~&  >>>  [%nack %graph-store]
    ~&  >>>  [%crow %flies %away]
    =.  sky
      *(jug resource rul)
    `this
  ::
      %fact
    ?+    +<.sign
      ~&  >>>  [%wat %mean]
      `this
    ::
        %graph-update-3
      =/  act=action  +:!<(update +>.sign)
      =,  act
      ?+    -.act  `this
          %add-nodes
        ?.  (~(has in ~(key by sky)) resource)
          `this
          ::
        =/  kez=(list (list atom))
          ~(tap in ~(key by nodes))
        =+  :-  ruz=(savvy resource)
            roz=(sense resource)
        =+  coz=*(list card)
        ::
        ?~  kez
          `this
          ::
        ?.  =(1 (lent kez))
          ~&  >>  [%crow %ignores %flock]
          `this
          ::
        =/  nod=node
          (~(got by nodes) i.kez)
        =/  con=(list content)
          contents.+>+<.p.post.nod
        =/  aut=@p
          author.-.p.post.nod
        ?:  (team:title our.bowl aut)
          `this
        =/  sat=(set rol)
          =+  fun=*(set rol)
          |-
          ?~  con
            ^-  (set rol)
            fun
          ?+    -.i.con  $(con t.con)
              %text
            %=    $
                fun
              %-  silt
              %+  rash
                +.i.con
              %+  ifix
                [(star ace) (star ace)]
              %+  more
                (plus (mask " \0a"))
              (cook crip (plus ;~(less (mask " \0a") next)))
            ::
                con
              t.con
            ==
          ==
        =/  wat=(list rol)
          ~(tap in (~(int in roz) sat))
        =^  cards  state
          =+  tic=100
          |-
          ?~  wat
            [coz state]
          =.  coz
            =+  can=~(tap in (~(got by caw) (~(got by ruz) i.wat)))
            =+  rad=(~(rad og eny.bowl) (lent can))
            =+  wil=?.(=('.' i.wat) (snag rad can) [[%mention aut] (snag rad can)])
            =+  wic=?:((team:title our.bowl entity.resource) %graph-store %graph-push-hook)
            =+  %:  spake
                  resource
                  wil
                  wic
                  tic
                ==
            (welp coz -)
          $(wat t.wat, tic (add tic 100))
      [cards this]
      ==
    ==
  ==
  ++  savvy
    |=  res=resource
    ^-  (map rol act)
    (malt ~(tap in (~(get ju sky) res)))
    ::
  ++  sense
    |=  res=resource
    %+  roll
      ~(tap in (~(get ju sky) res))
    |=([=rul out=(set @t)] (~(put in out) -.rul))
  ++  spake
    |=  [res=resource wit=(list content) wic=@tas toc=@ud]
    ^-  (list card)
    =/  wir=path
      :-  'caw'
      ^-  path
      %+  welp
        (en-path entity.res name.res)
      [wic (scot %da now.bowl) ~]
    =/  upd=update:store
      :-  (add now.bowl toc)
      :+  %add-nodes
        res
      %-  ~(put by *(map index:post node:store))
      :: an index-post (list of one)
      :-  ~[(add now.bowl toc)]
      :: empty children
      :_  [%empty ~]
      ^-  maybe-post:store
      :: a post-type maybe-post
      :-  %&
      ^-  post:post
      :*  our.bowl
          ~[(add now.bowl toc)]
          now.bowl
          wit
          ~
          ~
      ==
    :~  :*
      %pass   wir
      %agent  [our.bowl wic]
      %poke   %graph-update-3  !>(`update:store`upd)
    ==  ==
  --
::
++  on-watch  on-watch:def
::
++  on-arvo  on-arvo:def
::
++  on-peek  on-peek:def
::
++  on-leave  on-leave:def
::
++  on-fail  on-fail.def
--
::
|_  bol=bowl:gall
::
++  on-poop
  ^-  (quip card _state)
  ~&  >  [%crow %find %car]
  `state
--