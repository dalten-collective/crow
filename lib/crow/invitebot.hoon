/-  *post, store=graph-store, *resource, *crow, invite=invite-store, mdst=metadata-store
::
::  invitebot allows you to invite people by mentioning
::  them in chat.
::
::  croak(s):
::    [%string `'!invitebot']
::      -or-
::    [%string ~]  (not recommended)
::
::  use:
::    !invitebot %delegate ~rabsef-bicrym - grant ~rabsef invite authority
::    !invitebot %demote ~rabsef-bicrym   - deny ~rabsef invite authority
::    !invitebot %invite ~rabsef-bicrym   - invite ~rabsef
::    !invitebot %list                    - list delegates
::
|_  [bol=bowl:gall mynd=vase]
++  seed
  |=  [me=@tas =post =res]
  |^
  ^-  [(list card:agent:gall) meme]
  =+  mind=!<((unit (set ship)) mynd)
  =/  boss=(set ship)  ?~(mind ~ u.mind)
  ?.  |(=(our.bol author.post) (~(has in boss) author.post))
    `[%keep me !>(`(unit (set ship))``boss)]
  ::
  ?:  ?=([[%text @] ~] contents.post)
    ?~  comm=(slice +.i.contents.post)
      `[%keep me !>(`(unit (set ship))``boss)]
    ?.  =((sy ~['!invitebot' '%list']) (sy u.comm))
      `[%keep me !>(`(unit (set ship))``boss)]
    =-  `[%says me [%text -]~ !>(`(unit (set ship))``boss)]
    %-  ~(rep in boss)
    |=([a=@p b=@t] (rap 3 ~[(scot %p a) '\0a' b]))
  ::
  ?.  ?=([[%text @] [%mention @] * ~] contents.post)
    ~&  >>>  [%exiting %structure %error ~]
    `[%keep me !>(`(unit (set ship))``boss)]
  ?~  comm=(slice +.i.contents.post)
    `[%keep me !>(`(unit (set ship))``boss)]
  ::
  =+  coom=(sy u.comm)
  ?.  (~(has in coom) '!invitebot')
    `[%keep me !>(`(unit (set ship))``boss)]
  ::
  ?:  (~(has in coom) '%delegate')
    =.  boss  (~(put in boss) +.i.t.contents.post)
    `[%keep me !>(`(unit (set ship))``boss)]
  ::
  ?:  (~(has in coom) '%demote')
    =.  boss  (~(del in boss) +.i.t.contents.post)
    `[%keep me !>(`(unit (set ship))``boss)]
  ::
  ?:  (~(has in coom) '%invite')
    =+  who=+.i.t.contents.post
    ~&  >>  "i'm inviting"
    (hello mind res post who)
  ::
  `[%keep me !>(`(unit (set ship))``boss)]
  ++  slice
    |=  curd=cord
    %+  rush  curd
    %+  ifix  [(star ace) (star ace)]
    %+  more  (plus (mask " \0a"))
    (cook crip (plus ;~(less (mask " \0a") next)))
  ++  hello
    |=  [mind=(unit (set ship)) res=resource =post:store who=@p]
    =/  gorp=(unit resource)
      =-  ?:(=(*resource -) ~ `-)
      %-  %~  rep  by
          ^-  associations:mdst
          =-  .^(associations:mdst %gx -)
          :~  (scot %p our.bol)   %metadata-store
              (scot %da now.bol)  %associations  %noun
          ==
      |=  [[g=md-resource:mdst a=association:mdst] o=resource]
      ?.(?=(%graph app-name.g) o ?.(=(res resource.g) o group.a))
    ?~  gorp
      =/  msg=(list content:store)
        :~  [%mention author.post]
            [%text ' I couldn\'t find the group for ']
            [%reference [%group res]]
        ==
      `[%says me msg !>(`(unit (set ship))`mind)]
    =/  inv=action:invite
      :*  %invite  %groups  (shaf %group-uid eny.bol)
          entity.u.gorp  %group-push-hook  u.gorp  who
          '!invitebot %caw'
      ==
    ~&  >>  inv
    =/  msg=(list content:store)
      :~  [%mention author.post]  [%text 'I\'ve invited ']
          [%mention who]
      ==
    :_  [%says me msg !>(`(unit (set ship))`mind)]
    ^-  (list card:agent:gall)
    :~  :*
      %pass   /invite/bot/(scot %uv (sham eny.bol))
      %agent  [who %invite-hook]
      %poke   %invite-action  !>(inv)
    ==  ==
  --
--