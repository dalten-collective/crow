::
:: crow sur file
::
/-  *post, *graph-store, *resource, spider
::
|%
::
::  used types:
::::
+$  res  resource
+$  tails  @tas
+$  croak  $%  [%string str=(unit cord)]
               [%sidles =sidle]
               [%curler url=(unit cord)]
               [%menchy sup=(unit ship)]
               [%refers ruf=(unit reference)]
               [%coders exo=(unit [cord (list tank)])]
           ==
+$  sidle  $%  [%join ~]
               [%leave ~]
           ==
::::
::  note:
::    1) where croak gets true-null units, it understands
::       "any post of this kind" will be sent to the resulting
::       %haul or %mull, or will trigger the resulting %call.
::        - in contrast, a non-null value will only trigger
::       on an exact match in the watched resource
::    2) [%string str=cord] behaves differently than %text
::       and varies based on %haul/%mull/%call outcomes
::        - for %call it's looking for an exact match.
::        - for %haul/%mull, it'll take a close match and pass it on.
::        - BE CAREFUL with [%string ~] - you'll be burning
::          a lot of cycles in a busy group
::
::
::  poke actions:
::::
+$  flap  $%  [%teach tit=thots:one who=(unit frens:one)] :: train a behavior
              [%pinch =tails who=frens:one]                      :: restrict a behavior
              [%scare =tails]                                    :: remove a behavior
              [%reply =tails add=(list content)]                 :: add a reply to a %call
            ::
              [%think =res =croak =tails]  :: associate a string with a response
              [%steal =res =croak]         :: stop serving a resource w/ a tag
            ::
              [%treat ~]  :: toggle seeds
          ==
::
::  %haul/%mull -> crow comms:
::::
+$  meme  $%  [%says =tails wat=(list content) bak=vase]
              [%keep =tails bak=vase]
              [%dead =tails bak=vase]
          ==
::::
::  %haul/%maul -> crow
::   - %says - crow gets back a list of things to say
::   - %keep - crow gets back an updated state
::   - %dead - if possible, a failure can be sent back from
::             a %haul/%maul, either dissassociating (true null)
::             or re-setting the state
::
++  one
  |%
  ::
  ::  state-one:
  ::::
  +$  state  [=seeds =skies =brain =works]
  +$  seeds  ?
  +$  skies  (jug res [croak tails])
  +$  brain  (map tails [thots frens])
  +$  works  (set tails)
  ::
  +$  frens  $%  [%all ~]
                 [%who sep=(set ship)]
                 [%wat ran=(set rank:title)]
             ==
  +$  thots  $%  [%call nom=@tas wat=(set (list content)) mok=? slo=(unit @dr)]
                 [%haul nom=@tas nog=vase slo=(unit @dr)]
                 [%mull nom=@tas nog=vase slo=(unit @dr)]
             ==
  +$  sneed
    $_  ^|
    |_  [bowl:gall vase]
    ++  seed
      |~([me=@tas =post =res] [*(list card:agent:gall) *meme])
    --
  ::::
  ::    seeds - on-off
  ::    skies - jug of resources to [trigger effect-handler]s
  ::    brain - map of tails to [thots frens] - a shorthand
  ::    thots - actions (possibly stateful)
  ::          - [%call (set (list croak))]  - a chat bot
  ::          - [%haul ted=@tas nog=vase]   - a thread bot
  ::          - [%mull lib=@tas nog=vase]   - a library bot
  ::    note: - %calls are only triggered when the croak
  ::            associated with them is posted alone in a
  ::            graph;
  ::          - %haul and %mull, in contrast, will 
  ::            automatically route the entire message 
  ::            containing the `croak` to the subroutine for
  ::            unpacking.
  --
::
++  zero
  |%
  ::
  ::  state-zero
  ::::
  +$  state  [=nut =caw =sky]
  ::
  +$  nut  ?
  +$  caw  (jug act (list content))
  +$  sky  (jug resource rul)
  ::
  ::  assorted types for use in other types
  ::
  +$  rol  @t
  +$  act  @tas
  +$  rul  [rol act]
  --
--