/-  *post, store=graph-store, group=group-store, medal=metadata-store, *resource, *crow
/+  default-agent, dbug, resource
::
::  import any libraries we have
::
/~  feed  sneed:one  /lib/crow
::
::  type core
::
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
  =+  wir=[[%crow %brain %graph ~] [%crow %brain %group ~]]
  :_  this
  :~  [%pass +.wir %agent [our.bowl %group-store] %watch [%groups ~]]
      [%pass -.wir %agent [our.bowl %graph-store] %watch [%updates ~]]
  ==
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
    [hear:make:cc this(state old)]
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
  ?>  =(our.bowl src.bowl)
  ?+    mark  (on-poke:def mark vase)
      %crow-flap
    =/      vaz  !<(flap vase)
    ?-    -.vaz
        %treat
      ?.  seeds  %-  (slog leaf+"%crow-have-nut!" ~)
                 `this(seeds !seeds)
      %-  (slog leaf+"%crow-want-nut!" ~)
      `this(seeds !seeds)
    ::
        %teach
      =/  tot=thots:one  tit.vaz
      =/  bab=frens:one  ?~(who.vaz [%all ~] u.who.vaz)
      =/  nom=@tas
        ?.  (~(has by brain) nom.tit.vaz)  nom.tit.vaz
        ~&  >>>  [%crow-name-overlap ~]
        |-
        =/  suf=@tas
          %+  rap  3
          ~[nom.tit.vaz '-' (scot %u (shaw now.bowl 16 eny.bowl))]
        ?.  (~(has by brain) suf)
          ~&  >  [%crow-name-replace suf]
          suf
        $(eny.bowl +(eny.bowl))
      ?-    -.tot
          %call
        %-  (slog leaf+"%crow-learn-call {<nom>}" ~)
        `this(brain (~(put by brain) nom [tit.vaz bab]))
      ::
          %mull
        ?.  (~(has by feed) nom)
          %-  (slog leaf+"%crow-cant-find {<nom>}" ~)
          `this
        %-  (slog leaf+"%crow-learn-mull {<nom>}" ~)
        `this(brain (~(put by brain) nom [tit.vaz bab]))
      ::
          %haul
        =/  fil=path
          :~  (scot %p our.bowl)   %crow
              (scot %da now.bowl)  %ted
              %crow       nom      %hoon
          ==
        ?.  .^(? %cu fil)
          %-  (slog leaf+"%crow-lost-file {<fil>}" ~)
          `this
        %-  (slog leaf+"%crow-learn-haul {<nom>}" ~)
        `this(brain (~(put by brain) nom [tit.vaz bab]))
      ==
    ::
        %pinch
      ?.  (~(has by brain) tails.vaz)
        %-  (slog leaf+"%crow-ignores-you bad-tails {<tails.vaz>}" ~)
        `this
      =+  wuz=(~(got by brain) tails.vaz)
      =.  wuz  [-.wuz who.vaz]
      %-  (slog leaf+"%crow-limits {<tails.vaz>}" ~)
      `this(brain (~(put by brain) tails.vaz wuz))
    ::
        %scare
      ?.  (~(has by brain) tails.vaz)
        %-  (slog leaf+"%crow-ignores-you bad-tails {<tails.vaz>}" ~)
        `this
      %-  (slog leaf+"%crow-forgot {<tails.vaz>}" ~)
      `this(brain (~(del by brain) tails.vaz))
    ::
        %reply
      ?.  (~(has by brain) tails.vaz)
        %-  (slog leaf+"%crow-ignores-you bad-tails {<tails.vaz>}" ~)
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
      %-  (slog leaf+"%crow-updates-its-repertoire ~" ~)
      `this(brain (~(put by brain) tails.vaz wuz))
    ::
        %think
      ?.  ~(gaols muse:cc res.vaz)
        %-  (slog leaf+"%crow-ignores-you bad-resource {<res.vaz>}" ~)
        `this
      ?.  (~(has by skies) res.vaz)
        %-  (slog leaf+"%crow-watches {<res.vaz>}↔{<croak.vaz>}" ~)
        `this(skies (~(put ju skies) res.vaz [croak.vaz tails.vaz]))
      ?:  %-  ~(any in (~(got by skies) res.vaz))
          |=  [c=croak t=tails] 
          |(=(croak.vaz c) =([-.croak.vaz ~] c))
        %-  (slog leaf+"%crow-ignores-you overlap" ~)
        `this
      ?:  %-  ~(any in (~(got by skies) res.vaz))
          |=([c=croak t=tails] =([-.croak.vaz ~] c))
        %-  (slog leaf+"%crow-ignores-you overlap" ~)
        `this
      %-  (slog leaf+"%crow-watches {<res.vaz>}↔{<croak.vaz>}" ~)
      `this(skies (~(put ju skies) res.vaz [croak.vaz tails.vaz]))
    ::
        %steal
      ?.  (~(has by skies) res.vaz)
        %-  (slog leaf+"%crow-ignores-you {<res.vaz>}-invalid-sky" ~)
        `this
      =/  pleth=(unit tails)
        =+  (~(got by skies) res.vaz)
        (~(get by (malt ~(tap in -))) croak.vaz)
      ?~  pleth
        %-  (slog leaf+"%crow-ignores-you invalid-tails" ~)
        `this
      %-  (slog leaf+"%crow-forgot {<croak.vaz>}↔{<res.vaz>}" ~)
      `this(skies (~(del ju skies) res.vaz [croak.vaz u.pleth]))
    ==
  ==
++  on-agent
  |=  [=wire =sign:agent:gall]
  ^-  (quip card _this)
  ?-    -.sign
      %watch-ack
    ?:  =(~ p.sign)
      `this
    ~&  >>>  [%crow %nack wire ~]
    `this(seeds %.n)
  ::
      %poke-ack
    ?+    -.wire  `this
        %haul
      ?~  p.sign  `this
      ?.  ?=([%haul @ @ ~] wire)  `this
      =.  works  (~(del in works) (slav %tas +<.wire))
      %-  (slog leaf+"%crow-haul-failure {(scow %tas +<.wire)}" ~)
      `this
    ==
  ::
      %kick
    ?+    wire  `this
        [%crow %brain %graph ~]
      :_  this
      [%pass wire %agent [our.bowl %graph-store] %watch [%updates ~]]~
    ::
        [%crow %brain %group ~]
      :_  this
      [%pass wire %agent [our.bowl %group-store] %watch [%groups ~]]~
    ::
        [%haul @ @ ~]
      =.  works  (~(del in works) (scot %tas +<.wire))
      `this
    ==
  ::
      %fact
    ?:  ?=([%haul @ @ ~] wire)
      =+  me=(slav %tas +<.wire)
      ?+    p.cage.sign  (on-agent:def wire sign)
          %thread-fail
        =/  error    !<((pair term tang) q.cage.sign)
        =.  works  (~(del in works) me)
        %-  (slog leaf+"%crow-haul-fail: {(trip p.error)}" q.error)
        `this
      ::
          %thread-done
        =/  loots=meme  !<(meme q.cage.sign)
        =.  works  (~(del in works) me)
        =^  cards  state
          (read:cc loots)
        [cards this]
      ==
    ?+    +<.sign  ~&  >>>  [%wat %meen +<.sign ~]  `this
        %group-update-0
      =/  upd=update:group  !<(update:group +>.sign)
      =^  cards  state
        ?+    -.upd  `state
            %add-members
          =-  =/  trig=(list resource)
                %-  ~(rep by -)
                |=  [[md=md-resource:medal *] out=(list resource)]
                ?.(?=(%graph -.md) out [resource.+.md out])
              =|  caz=(list card)
              |-  
              ?~  trig  [caz state]
              ?.  (~(has by skies) i.trig)  $(trig t.trig)
              =-  $(caz (weld -.- caz), state +.-, trig t.trig)
              (~(savvy muse:cc i.trig) [%join ships.upd])
          .^  associations:medal
              %gx
              ^-  path
              %-  zing  %-  limo
              :~  /(scot %p our.bowl)/metadata-store/(scot %da now.bowl)
                  /group  (en-path:resource resource.upd)  /noun
          ==  ==
        ::
            %remove-members
          =-  =/  trig=(list resource)
                %-  ~(rep by -)
                |=  [[md=md-resource:medal *] out=(list resource)]
                ?.(?=(%graph -.md) out [resource.+.md out])
              =|  caz=(list card)
              |-  
              ?~  trig  [caz state]
              ?.  (~(has by skies) i.trig)  $(trig t.trig)
              =-  $(caz (weld -.- caz), state +.-, trig t.trig)
              (~(savvy muse:cc i.trig) [%leave ships.upd])
          .^  associations:medal
              %gx
              ^-  path
              %-  zing  %-  limo
              :~  /(scot %p our.bowl)/metadata-store/(scot %da now.bowl)
                  /group  (en-path:resource resource.upd)  /noun
          ==  ==
        ==
      [cards this]
    ::
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
          (~(savvy muse:cc resource.act) [%post p.post.tam])
        [cards this]
      ==
    ==
  ==
++  on-arvo
  |=  [=wire =sign-arvo]
  ^-  (quip card _this)
  ?.  ?=([%saf @ @ ~] wire)          (on-arvo:def wire sign-arvo)
  ?.  ?=([%behn %wake *] sign-arvo)  (on-arvo:def wire sign-arvo)
  ?^  error.sign-arvo                (on-arvo:def wire sign-arvo)
  ::
  `this(works (~(del in works) (slav %tas +<.wire)))
++  on-watch  on-watch:def
++  on-peek   on-peek:def
++  on-leave  on-leave:def
++  on-fail   on-fail:def
--
|_  bol=bowl:gall
++  meta
  |=  me=@tas
  ^-  (unit [thots:one frens:one])
  ?.  (~(has by brain) me)  ~
  `(~(got by brain) me)
::
++  helo
  |=  [=res act=(each (list content:store) index:store)]
  ^-  (list card)
  =+  ?.  =(our.bol entity.res)
        [tik=now.bol tok=%graph-push-hook]
      [tik=(add now.bol ~s1) tok=%graph-store]
  ?-  -.act
      %.n
    :~  :*
      %pass   /crow/helo/(scot %da now.bol)
      %agent  [entity.res tok]
      %poke   %graph-update-3
      !>  ^-  update:store
      [now.bol %remove-posts res `(set index:store)`(sy ~[+.act])]
    ==  ==
  ::
      %.y
    =/  upd=update:store
      :-  `time`tik  :+  %add-nodes  res
      %-  ~(put by *(map index:store node:store))
      :-  ~[`@`tik]  :_  [%empty ~]
      [%& [our.bol ~[tik] now.bol `(list content:store)`+.act ~ ~]]
    :~  :*
      %pass   /crow/helo/(scot %da now.bol)
      %agent  [entity.res tok]
      %poke   %graph-update-3  !>(`update:store`upd)
    ==  ==
  ==
::
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
  ++  hear
    =+  cards=*(list card)
    ^-  (list card)
    =?    cards
        =+  (~(get by wex.bol) [/crow/brain/group our.bol %group-store])
        ?~(- %.y !-.u.-)
      =+  [%crow %brain %group ~]
      %+  welp  cards
      [%pass - %agent [our.bol %group-store] %watch [%groups ~]]~
    ::
    =?    cards
        =+  (~(get by wex.bol) [/crow/brain/graph our.bol %graph-store])
        ?~(- %.y !-.u.-)
      =+  [%crow %brain %graph ~]
      %+  welp  cards
      [%pass - %agent [our.bol %graph-store] %watch [%updates ~]]~
    ::
    cards
  --
::
++  read
  |=  vaz=meme
  ^-  (quip card _state)
  ?~  meta=(meta tails.vaz)
    ?-  -.vaz
      %keep  %-  (slog leaf+"%crow-wont-keep {<tails.vaz>}" ~)
             `state
    ::
      %says  %-  (slog leaf+"%crow-wont-says {<tails.vaz>}" ~)
             `state
    ::
      %dead  %-  (slog leaf+"%crow-got-bad-dead {<tails.vaz>}" ~)
             `state
    ==
  ::
  =/  ear=[t=thots:one f=frens:one]  u.meta
  =+  ent=`thots:one`t.ear
  ?-    -.vaz
      %dead
    ?>  ?=(%haul -.ent)
    =.  works  (~(del in works) tails.vaz)
    `state(brain (~(put by brain) tails.vaz [ent(nog !>(~)) f.ear]))
  ::
      %keep
    ?>  ?=(%haul -.ent)
    =.  works  (~(del in works) tails.vaz)
    `state(brain (~(put by brain) tails.vaz [ent(nog bak.vaz) f.ear]))
  ::
      %says
    ?>  ?=(%haul -.ent)
    =.  works  (~(del in works) tails.vaz)
    ::
    =.  brain
      (~(put by brain) tails.vaz [ent(nog bak.vaz) f.ear])
    [(helo res.vaz [%.y wat.vaz]) state]
  ==
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
        =-  .^(associations:medal %gx -)
        :~  (scot %p our.bol)   %metadata-store
            (scot %da now.bol)  %associations  %noun
        ==
    |=  $:  [p=md-resource:medal q=association:medal]
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
    |=  =sadle
    ^-  (quip card _state)
    |^
    =+  haz=~(has by mails)
    =+  gaz=~(got by mails)
    =+  ack=*(list tails)
    =-  [(zing -.-) +.-]
    %-  sense  %-  silt
    ^-  (list tails)
    %-  zing
    ?-    -.sadle
        %join
      =?    ack
          (haz [%sidles [%join ~]])
        [(gaz [%sidles [%join ~]]) ack]
      ?~(ack ~ [ack]~)
    ::
        %leave
      =?    ack
          (haz [%sidles [%leave ~]])
        [(gaz [%sidles [%leave ~]]) ack]
      ?~(ack ~ [ack]~)
    ::
        %post
      =,  sadle
      %+  roll  contents.post
      |=  [con=content lil=(list (list tails))]
      ::
      ?-    -.con
          %text
        ?:  (haz [%string ~])
          [[(gaz [%string ~]) ack] lil]
        ::
        =/  oleth=(set cord)
          =-  ?~(- *(set cord) (sy u.-))
          %+  rush  +.con
          %+  ifix  [(star ace) (star ace)]
          %+  more  (plus (mask " \0a"))
          (cook crip (plus ;~(less (mask " \0a") next)))
        =/  shibb=(list cord)  ~(tap in oleth)
        |-
        ?~  shibb  [ack lil]
        ?.  (~(has by wails) i.shibb)  $(shibb t.shibb)
        =.  ack  [(~(got by wails) i.shibb) ack]
        $(shibb t.shibb)
      ::
          %mention
        =?    ack
            (haz [%menchy ~])
          [(gaz [%menchy ~]) ack]
        ::
        =?    ack
            (haz [%menchy `ship.con])
          [(gaz [%menchy `ship.con]) ack]
        [ack lil]
      ::
          %url
        =?    ack
            (haz [%curler ~])
          [(gaz [%curler ~]) ack]
        ::
        =?    ack
            (haz [%curler `url.con])
          [(gaz [%curler `url.con]) ack]
        [ack lil]
      ::
          %code
        =?    ack
            (haz [%coders ~])
          [(gaz [%coders ~]) ack]
        ::
        =?    ack
            (haz [%coders `[expression.con output.con]])
          [(gaz [%coders `[expression.con output.con]]) ack]
        [ack lil]
      ::
          %reference
        =?    ack
            (haz [%refers ~])
          [(gaz [%refers ~]) ack]
        ::
        =?    ack
            (haz [%refers `reference.con])
          [(gaz [%refers `reference.con]) ack]
        [ack lil]
      ==
    ==
    ::
    ++  sense
      |=  sail=(set tails)
      ^-  (quip (list card) _state)
      =+  lel=*(list (list card))
      =/  sel=(list [th=thots:one fr=frens:one])  
        %~  tap  in  
        ^-  (set [thots:one frens:one])
        %-  ~(run in sail)
        |=(a=@tas (~(got by brain) a))
      |-
      ?~  sel  [lel state]
      ?:  ?.(?=(%post -.sadle) %.n !(flock fr.i.sel author.post.sadle))
        $(sel t.sel)
      ::
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
      ?.  (~(has by feed) me)   `state
      ?:  (~(has in works) me)  `state
      =*  chuck  ~(. (~(got by feed) me) bol nog)
      =+  `[l=(list card) =meme]`(seed:chuck me sadle r)
      ::  slo-mo-control
      =?    works
          !?=(~ saf)
        (~(put in works) me)
      ::
      =.  l
        ?~  saf  l
        :_  l
        [%pass [%saf me (scot %da now.bol) ~] %arvo %b %wait (add u.saf now.bol)]
      ::
      ?-    -.meme
          %dead
        `state(brain (~(put by brain) me [ent(nog !>(~)) f.ear]))
      ::
          %keep
        :-  l
        state(brain (~(put by brain) me [ent(nog bak.meme) f.ear]))
      ::
          %says
        :-  (welp l (helo r [%.y wat.meme]))
        state(brain (~(put by brain) me [ent(nog bak.meme) f.ear]))
      ==
    ::
    ++  snake
      |=  [me=@tas nog=vase saf=(unit @dr)]
      ^-  [(list card) _state]
      =/  tid=@ta
        (cat 3 'crow_' (scot %da now.bol))
      =/  sip=[(unit @ta) (unit @ta) =beak =term =vase]
        [~ `tid byk.bol(r da+now.bol) (cat 3 %crow- me) !>([me sadle r nog])]
      =/  pat=path
        /haul/(scot %tas me)/(scot %da now.bol)
      ::  slo-mo-control
      =?    works
          !?=(~ saf)
        (~(put in works) me)
      ::
      =/  timer=(list card)
        ?~  saf  *(list card)
        [%pass [%saf me (scot %da now.bol) ~] %arvo %b %wait (add u.saf now.bol)]~
      ::
      :_  state
      %+  welp  timer
      :~  [%pass pat %agent [our.bol %spider] %watch /thread-result/[tid]]
          [%pass pat %agent [our.bol %spider] %poke %spider-start !>(sip)]
      ==
    ::
    ++  spake
      |=  [me=@tas vocab=(set (list content)) mok=? saf=(unit @dr)]
      ^-  [(list card) _state]
      ::
      =/  timer=(list card)
        ?~  saf  *(list card)
        [%pass [%saf me (scot %da now.bol) ~] %arvo %b %wait (add u.saf now.bol)]~
      =?    works
          !?=(~ saf)
        (~(put in works) me)
      ::
      =+  bla=~(tap in vocab)
      =/  moo  ~(. og eny.bol)
      =|  loo=(list card)
      ::
      ?-    -.sadle
          %join
        =/  hoo=(list ship)  ~(tap in sip.sadle)
        |-
        ?~  hoo  [timer state]
        =^  dat  moo  (rads:moo (lent bla))
        =/  dis=(list content:store)  (snag dat bla)
        =?    dis
            mok
          [[%mention i.hoo] dis]
        $(timer (welp (helo r [%.y dis]) timer), hoo t.hoo)
      ::
          %leave
        =/  hoo=(list ship)  ~(tap in sip.sadle)
        |-
        ::  shame the devil
        ?~  hoo  [timer state]
        =^  dat  moo  (rads:moo (lent bla))
        =/  dis=(list content:store)  (snag dat bla)
        =?    dis
            mok
          [[%mention i.hoo] dis]
        $(timer (welp (helo r [%.y dis]) timer), hoo t.hoo)
      ::
          %post
        ?:  =(our.bol author.post.sadle)  `state
        ::  slo-mo-control
        =^  dat  moo  (rads:moo (lent bla))
        =/  dis=(list content:store)  (snag dat bla)
        =?    dis
            mok
          [[%mention author.post.sadle] dis]
        [(welp (helo r [%.y dis]) timer) state]
      ==
    --
  --
--