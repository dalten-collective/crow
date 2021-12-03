::
:: crow
::
/-  *crow
/+  default-agent, dbug, resource
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
+$  card     card:agent:gall
+$  eyre-id  @ta
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
      :_  state
      ^-  (list card)
      =/  wir=path
        :+  (scot %tas 'resource')
          (scot %da now.bowl)
        (welp (en-path:resource entity.res name.res) ~[-.rul])
      =/  pat=path
      ~[%resource %ver %ship (scot %p entity.res) name.res (scot %ud 3)]
      :~  :*
        %pass   wir
        %agent  [our.bowl %graph-push-hook]
        %watch  pat
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
      ~&  >>>  !<(update +>.sign)
      `this
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