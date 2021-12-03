:: crow
/-  chat
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
      %1
    `this(state old)
  ==
::
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card _this)
  =^  cards  state
  ?>  =(mark %crow-flap)
    =+  vaz=flap  !<(flap vase)
    ?-    -.vaz
        %treat
      ?.  nut
        ~&  >>> [%crow %want %nut]
        `state(nut !nut)
      ~&  >  [%crow %see %nut]
      `state(nut !nut)
    ::
        %think
      ~|  [`@tas`'!' %crow %need %rol]
      ?>  !=('' rol.rul)
      =?  sky
        !(~(has ju sky) res rul)
      ?: (~(has in ~(key by caw)) act.rul)
        (~(put ju sky) res rul)
        `state
      ~&  >>> [`@tas`'!' %crow %need %teach]
      `state
    ::
        %steal
      =.  sky
        (~(del ju sky) resource rul)
      `state
    ::
        %teach
      =.  caw
        (~(put ju caw) tag ack)
      `state
    ==
::
++  on-watch  on-watch:def
::
++  on-arvo  on-arvo:def
::
++  on-agent  on-agent:def
::
++  on-peek  on-peek:def
::
++  on-leave  on-leave:def
::
++  on-fail  on-fail.def
::
|_  bol=bowl:gall
::
++  on-poop
  ^-  (quip card _this)
  ~&  >  [%crow %find %car]
  `state
--