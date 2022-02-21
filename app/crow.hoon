/-  *post, store=graph-store, mdst=metadata-store, *resource, *crow
/+  default-agent, dbug
::
::  import any libraries we have
::
/~  feed  sneed:one  /lib/crow
|%
+$  versioned-state
  $%  [%1 state:one]
      [%0 state:zero]
  ==
::
+$  state-1  [%1 state:one]
::
+$  card     card:agent:gall
+$  eyre-id  @ta
--
::
%-  agent:dbug
::
=|  state-1
=*  state  -
::
^-  agent:gall
=<
|_  =bowl:gall
+*  this  .
    def   ~(. (default-agent this %|) bowl)
    cc    ~(. +> bowl)
::
++  on-init
  ^-  (quip card _this)
  ~&  >  [%crow %awake ~]
  :_  this
  ^-  (list card)
  :~  :*
    %pass   [%crow %brain ~]
    %agent  [our.bowl %graph-store]
    %watch  [%updates ~]
  ==  ==
::
++  on-save
  ^-  vase
  !>(state)
::
++  on-load
  |=  ole=vase
  =/  old=versioned-state  !<(versioned-state ole)
  ~&  >>  [%crow %barrel %roll ~]
  |-
  ?-    -.old
      %1
    `this(state old)
  ::
      %0
    %=    $
        old
      [%1 nut.old (blue:make:cc sky.old) (mind:make:cc caw.old) ~]
    ==
  ==
::
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card _this)
  ?+    mark  (on-poke:def mark vase)
      %crow-flap
    ?>  =(our.bowl src.bowl)
    =/      vaz  !<(flap vase)
    ?-    -.vaz
        %treat
      ?.  seeds  ~&  >  [%crow %hav %nut ~]
                 `this(seeds !seeds)
      ~&  >>  [%crow %want %nut ~]
      `this(seeds !seeds)
    ::
        %teach
      =/  tot=thots:one  tit.vaz
      =/  bab=frens:one  ?~(who.vaz [%all ~] u.who.vaz)
      =/  nom=@tas
        ?.  (~(has by brain) nom.tit.vaz)  nom.tit.vaz
        |-
        =+  suf=(shaw now.bowl 16 eny.bowl)
        ?.  (~(has by brain) suf)  suf
        $(eny.bowl +(eny.bowl))
      ~&  >>>  [%crow %name %overlap ~]
      ~&  >    [%crow %name %replace nom ~]
      ?-    -.tot
          %call
        ~&  >  [%crow %learn %call nom ~]
        `this(brain (~(put by brain) nom [tit.vaz bab]))
      ::
          %mull
        ?.  (~(has by feed) nom)
          ~&  >>>  [%crow %lost nom]
          `this
        ~&  >  [%crow %learn %mull nom ~]
        `this(brain (~(put by brain) nom [tit.vaz bab]))
      ::
          %haul
        =/  fil=path
          :~  (scot %p our.bowl)   %crow
              (scot %da now.bowl)  %ted
              %crow       nom      %hoon
          ==
        ?.  .^(? %cu fil)
          ~&  >>>  [%crow %lost fil]
          `this
        ~&  >  [%crow %learn %haul nom ~]
        `this(brain (~(put by brain) nom [tit.vaz bab]))
      ==
    ::
        %pinch
      ?.  (~(has by brain) tails.vaz)
        ~&  >>>  [%crow %stranger tails.vaz ~]
        `this
      =+  wuz=(~(got by brain) tails.vaz)
      =.  wuz  [-.wuz who.vaz]
      ~&  >  [%crow %limits tails.vaz ~]
      `this(brain (~(put by brain) tails.vaz wuz))
    ::
        %scare
      ?.  (~(has by brain) tails.vaz)
        ~&  >>>  [%crow %stranger tails.vaz ~]
        `this
      ~&  >  [%crow %forget tails.vaz ~]
      `this(brain (~(del by brain) tails.vaz))
    ::
        %reply
      ?.  (~(has by brain) tails.vaz)
        ~&  >>>  [%crow %stranger tails.vaz ~]
        `this
      =+  wuz=(~(got by brain) tails.vaz)
      =/  tot=thots:one  -.wuz
      ?>  ?=(%call -.tot)
      =.  wuz
        :_  +.wuz
        :*  %call
            nom.tot
            (~(put in wat.tot) add.vaz)
            mok.tot
            slo.tot
        ==
      ~&  >  [%crow %update %repertoire ~]
      `this(brain (~(put by brain) tails.vaz wuz))
    ::
        %think
      ?.  ~(gaols muse:cc res.vaz)
        ~&  >>>  [%crow %fear %storm ~]
        `this
      ?.  (~(has by skies) res.vaz)
        ~&  >  [%crow %watches res.vaz %for croak.vaz ~]
        `this(skies (~(put ju skies) res.vaz [croak.vaz tails.vaz]))
      ?.  %-  ~(any in (~(got by skies) res.vaz))
          |=([c=croak t=tails] =(croak.vaz c))
        ~&  >>>  [%crow %already %noes croak.vaz] 
        ~&  >>>  [%steal %first ~]
        `this
      ~&  >  [%crow %watches res.vaz %for croak.vaz ~]
      `this(skies (~(put ju skies) res.vaz [croak.vaz tails.vaz]))
    ::
        %steal
      ?.  (~(has by skies) res.vaz)
        ~&  >>>  [%crow %stranger res.vaz ~]
        `this
      =/  pleth=(unit tails)
        =+  (~(got by skies) res.vaz)
        (~(get by (malt ~(tap in -))) croak.vaz)
      ?~  pleth
        ~&  >>>  [%crow %stranger croak.vaz]
        `this
      ~&  >  [%crow %forgot croak.vaz %in res.vaz]
      `this(skies (~(del ju skies) res.vaz [croak.vaz u.pleth]))
    ==
  ==
++  on-agent
  |=  [=wire =sign:agent:gall]
  ^-  (quip card _this)
  ?-    -.sign
      %kick
    ?.  =(wire [%crow %brain ~])
      `this
    :_  this
    [%pass wire %agent [our.bowl %graph-store] %watch [%updates ~]]~
  ::
      %poke-ack
    ?~  p.sign  `this  `this
  ::
      %watch-ack
    ?:  =(~ p.sign)
      `this
    ~&  >>>  [%nack %graph-store ~]
    ~&  >>>  [%crow %flies %away ~]
    `this(seeds %.n)
  ::
      %fact
    ?+    +<.sign  ~&  >>>  [%wat %meen ~]  `this
        %graph-update-3
      =/  upd=update:store  !<(update:store +>.sign)
      =/  act=action:store  +.upd
      ?+    -.act  `this
          %add-nodes
        ?.  (~(has in ~(key by skies)) resource.act)
          `this
        =+  qui=~(tap in ~(key by nodes.act))
        ?~  qui  `this
        ?:  (gth 1 (lent qui))
          `this
        =+  tam=(~(got by nodes.act) i.qui)
        ?.  ?=(%.y -.post.tam)  `this
        =^  cards  state
          (~(savvy muse:cc resource.act) p.post.tam)
        [cards this]
      ==
    ==
  ==
++  on-watch  on-watch:def
++  on-arvo   on-arvo:def
++  on-peek   on-peek:def
++  on-leave  on-leave:def
++  on-fail   on-fail:def
--
|_  bol=bowl:gall
++  make
  |%
  ++  mind
    |=  c=caw:zero
    %-  ~(rep by c)
    |=  [[a=@tas s=(set (list content))] out=brain:one]
    (~(put by out) a [[%call a s %.y ~] [%all ~]])
  ++  blue
    |=  s=sky:zero
    %-  ~(rep by s)
    |=  [[r=res s=(set [@t @tas])] out=skies:one]
    %-  ~(rep in s)
    |=  [[t=@t a=@tas] out=skies:one]
    (~(put ju out) r [[%string `t] a])
  --
::
++  muse
  |_  r=res
  ++  gaols
    (~(has in gales) r)
  ::
  ++  gales
    %-  sy
    ^-  (list resource)
    %-  %~  rep  by
        =-  .^(associations:mdst %gx -)
        :~  (scot %p our.bol)   %metadata-store
            (scot %da now.bol)  %associations  %noun
        ==
    |=  $:  [p=md-resource:mdst q=association:mdst]
            out=(list resource)
        ==
    ?.  ?=(%graph -.p)  out
    =*  met  metadatum.q
    ?.  ?=([%graph %chat] config.met)  out
    [resource.p out]
  ::  map of croaks -> tails
  ++  mails
    ^-  (map croak tails)
    (malt ~(tap in (~(got by skies) r)))
  ::  text cues
  ++  wails
    ^-  (map @t tails)
    %-  ~(rep by mails)
    |=  [[c=croak t=tails] ma=(map @t tails)]
    ?.  ?=(%string -.c)  ma
    ?~(str.c ma (~(put by ma) u.str.c t))
  ::  check permissions
  ++  flock
    |=  [fren=frens:one them=@p] 
    ^-  ?
    ?-  -.fren
      %all  %.y
      %who  (~(has in sep.fren) them)
      %wat  (~(has in ran.fren) (clan:title them))
    ==
  ::    
  ++  savvy
    |=  =post
    |^
    =-  [(zing -.-) +.-]
    %-  sense  %-  silt  ^-  (list tails)
    %-  zing  %+  roll  contents.post
    |=  [con=content lil=(list (list tails))]
    =+  haz=~(has by mails)
    =+  gaz=~(got by mails)
    =+  ack=*(list tails)
    ::
    ?-    -.con
        %text
      ?:  (haz [%string ~])
        [[(gaz [%string ~]) ack] lil]
      =/  keywords=(unit (list @t))
        %+  rush  +.con
        %+  ifix  [(star ace) (star ace)]
        %+  more  (plus (mask " \0a"))
        (cook crip (plus ;~(less (mask " \0a") next)))
      ?~  keywords
        [ack lil]
      =+  riff=`(list @t)`u.keywords
      |-
      ?~  riff  [ack lil]
      ?.  (~(has by wails) i.riff)  $(riff t.riff)
      =.  ack  [(~(got by wails) i.riff) ack]
      $(riff t.riff)
    ::
        %mention
      =?    ack
          (haz [%menchy ~])
        [(gaz [%menchy ~]) ack]
      =?    ack
          (haz [%menchy `ship.con])
        [(gaz [%menchy `ship.con]) ack]
      [ack lil]
    ::
        %url
      =?    ack
          (haz [%curler ~])
        [(gaz [%curler ~]) ack]
      =?    ack
          (haz [%curler `url.con])
        [(gaz [%curler `url.con]) ack]
      [ack lil]
    ::
        %code
      =?    ack
          (haz [%coders ~])
        [(gaz [%coders ~]) ack]
      =?    ack
          (haz [%coders `[expression.con output.con]])
        [(gaz [%coders `[expression.con output.con]]) ack]
      [ack lil]
    ::
        %reference
      =?    ack
          (haz [%refers ~])
        [(gaz [%refers ~]) ack]
      =?    ack
          (haz [%refers `reference.con])
        [(gaz [%refers `reference.con]) ack]
      [ack lil]
    ==
    ::
    ++  sense
      |=  sail=(set tails)
      =+  lel=*(list (list card))
      =/  sel=(list [th=thots:one fr=frens:one])  
        %~  tap  in  
        ^-  (set [thots:one frens:one])
        %-  ~(run in sail)
        |=(a=@tas (~(got by brain) a))
      |-
      ?~  sel  [lel state]
      ?.  (flock fr.i.sel author.post)      $(sel t.sel)
      ?-    -.th.i.sel
          %call
        ?.  =(1 ~(wyt in sail))             $(sel t.sel)
        =+  wurd=(spake +.th.i.sel)
        $(sel t.sel, lel [-.wurd lel], state +.wurd)
      ::
          %haul
        ?:  (~(has in works) nom.th.i.sel)  $(sel t.sel)
        =+  deed=(snake +.th.i.sel)
        $(sel t.sel, lel [-.deed lel], state +.deed)
      ::
          %mull
        =+  book=(sneer +.th.i.sel)
        $(sel t.sel, lel [-.book lel], state +.book)
      ==
    ::
    ++  sneer
      |=  [me=@tas nog=vase saf=(unit @dr)]
      ^-  [(list card) _state]
      =/  ear=[t=thots:one f=frens:one]  (~(got by brain) me)
      =+  ent=`thots:one`t.ear
      ?>  ?=(%mull -.ent)
      ?.  (~(has by feed) me)  `state
      =*  chuck  ~(. (~(got by feed) me) bol nog)
      =+  `[l=(list card) =meme]`(seed:chuck me post r)
      ?-    -.meme
          %dead
        =.  brain
          %+  ~(put by brain)  me
          [ent(nog !>(~)) f.ear]
        `state
      ::
          %keep
        =.  brain
          %+  ~(put by brain)  me
          [ent(nog bak.meme) f.ear]
        [l state]
      ::
          %says
        =+  lat=(add now.bol ~s1)
        =+  wir=[%sneer %sneed (scot %da now.bol) ~]
        =/  wic=term
          ?:(=(our.bol entity.r) %graph-store %graph-push-hook)
        =/  upd=update:store
          :-  lat
          :+  %add-nodes  r
          %-  ~(put by *(map index node))
          :-  ~[lat]
          :_  [%empty ~]
          :-  %.y
          [our.bol ~[lat] now.bol wat.meme ~ ~]
        =.  brain
          %+  ~(put by brain)  me
          [ent(nog bak.meme) f.ear]
        :_  state
        %+  welp  l
        [%pass wir %agent [our.bol wic] %poke %graph-update-3 !>(upd)]~
      ==
    ::
    ++  snake
      |=  [me=@tas nog=vase saf=(unit @dr)]
      ^-  [(list card) _state]
      =/  tid=@ta
        (cat 3 'crow_' (scot %uv (sham eny.bol)))
      =/  sip=[(unit @ta) (unit @ta) =beak =term =vase]
        [~ `tid byk.bol me !>([me post r nog])]
      =/  pat=path
        /crow/(scot %tas me)/(scot %uv (sham eny.bol))
      ::  todo - implement slo-mo
      `state
      :::_  state
      ::[%pass pat %agent [our.bol %spider] %poke %spider-start !>(sip)]~
    ::
    ++  spake
      |=  [me=@tas vocab=(set (list content)) mok=? saf=(unit @dr)]
      ^-  [(list card) _state]
      :: todo - implement slo-mo
      ?:  =(our.bol author.post)  `state
      =+  bla=~(tap in vocab)
      =+  doo=(snag (~(rad og eny.bol) (lent bla)) bla)
      =?    doo
          mok
        [[%mention author.post] doo]
      =+  lat=(add now.bol ~s1)
      =+  wir=[%sneer %sneed (scot %da now.bol) ~]
      =/  wic=term
        ?:(=(our.bol entity.r) %graph-store %graph-push-hook)
      =/  upd=update:store
        :-  lat
        :+  %add-nodes
          r
        %-  ~(put by *(map index node))
        :-  ~[lat]
        :_  [%empty ~]
        :-  %.y
        [our.bol ~[lat] now.bol doo ~ ~]
      :_  state
      [%pass wir %agent [our.bol wic] %poke %graph-update-3 !>(upd)]~
    --
  --
--