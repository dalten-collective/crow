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
  `this
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
    `this(state old)
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
        %treat
      ?.  nut
        ~&  >>>  [%crow %want %nut]
        `state(nut !nut)
      ~&  >  [%crow %see %nut]
      `state(nut !nut)
    ::
        %think
      =.  sky
        (~(put ju sky) res rul)
      :_  state
      ^-  (list card)
      =/  wir=path
        :-  (scot %tas 'update')
        (welp (en-path entity.res name.res) ~[-.rul])
      :~  :*
        %pass   wir
        %agent  [our.bowl %graph-store]
        %watch  [%updates ~]
      ==  ==
      ::~|  [`@tas`'!' %crow %need %rol]
      ::?>  !=('' rol.rul)
      ::=?  sky
      ::  !(~(has ju sky) res rul)
      ::?: (~(has in ~(key by caw)) act.rul)
      ::  (~(put ju sky) res rul)
      ::  `state
      ::~&  >>> [`@tas`'!' %crow %need %teach]
    ::
        %steal
      =.  sky
        (~(del ju sky) res rul)
      `state
    ::
        %teach
      =.  caw
        (~(put ju caw) act ack)
      `state
    ::
        %scare
      =.  caw
        (~(del ju caw) act ack)
      `state
    ==
  [cards this]
::
++  on-agent
  |=  [=wire =sign:agent:gall]
  ^-  (quip card _this)
  ~&  wire
  ?+    -.sign
    ~&  sign
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
      ~&  -.act
      ~&  ?:(=(-.act %add-nodes) %.y %.n)
      ?+    -.act  `this
          %add-nodes
        ?.  (~(has in ~(key by sky)) resource)
          `this
        =/  kez=(list (list atom))
          ~(tap in ~(key by nodes))
        =/  ruz=(set rul)  (~(get ju sky) resource)
        ~&  >>  (malt ~(tap in ruz))
        =/  roz=(set rol)
          %+  roll
            ~(tap in ruz)
          |=  [=rul out=(set rol)]
          (~(put in out) -.rul)
        =/  coz=(list card)
          *(list card)
        ?~  kez
          `this
        ?.  =(1 (lent kez))
          ~&  >>>  [%crow %ignore %flock]
          `this
        =/  pul=node
          (~(got by nodes) i.kez)
        =/  cal=(list content)
          contents.+>+<.p.post.pul
        =^  cards  state
          |-
          ?~  cal
            [coz state]
          ?+    -.i.cal  $(cal t.cal)
              %text
            =/  sound=(set rol)
              %-  silt
              %+  rash
                +.i.cal
              %+  ifix
                [(star ace) (star ace)]
              %+  more
                (plus (mask " \0a"))
              (cook crip (plus ;~(less (mask " \0a") next)))
            =/  heard=(list rol)
              ~(tap in (~(int in roz) sound))
            ~&  heard
            =.  coz
              =+  and=10
              |-
              ?~  heard
                coz
              %=    $
                  heard
                t.heard
              ::
                  and
                ~&  and
                (add and 10)
              ::
                  coz
                :: this card is hideous... :(
                =+  ion=(~(got by (malt ~(tap in ruz))) i.heard)
                ~&  >  ion
                =+  can=(~(got by caw) ion)
                ~&  >>  can
                =+  rad=(~(rad og eny.bowl) (lent ~(tap in can)))
                =+  wil=(snag rad ~(tap in can))
                ~&  >>>  wil
                =/  wir=path
                  :-  'caw'
                  ^-  path
                  %+  weld
                    (en-path entity.resource name.resource)
                  [i.heard (scot %da now.bowl) ~]
                =/  upd=update:store
                  :-  now.bowl
                  :+  %add-nodes
                    resource
                  %-  ~(put by *(map index:post node:store))
                  :: an index-post (list of one)
                  :-  ~[(add now.bowl and)]
                  :: empty children
                  :_  [%empty ~]
                  ^-  maybe-post:store
                  :: a post-type maybe-post
                  :-  %&
                  ^-  post:post
                  :*  our.bowl
                      ~[(add now.bowl and)]
                      now.bowl
                      wil
                      ~
                      ~
                  ==
                ~&  upd
                %+  welp  coz
                :~  :*
                  %pass   wir
                  %agent  [our.bowl %graph-store]
                  %poke   %graph-update-3  !>(`update:store`upd)
                ==  ==
              ==
            $(cal t.cal)
          ==
        [cards this]
      ==
    ==
  ==
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