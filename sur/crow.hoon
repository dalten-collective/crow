::
:: crow sur file
::
/-  *post, *graph-store, *resource
::
|%
::
:: on/off
::
+$  nut  ?
::
::
:: what cries your crow can make and where
::
+$  caw  (jug act (list content))
+$  sky  (jug resource rul)
::
:: assorted types for use in other types
::
+$  rol  @t
+$  act  @tas
+$  rul  [rol act]
::
::  crow's actions
::
+$  flap
  $%  [%teach =act ack=(list content)]      :: train a new response
      [%scare =act ack=(list content)]      :: remove a response
      [%think res=resource =rul]            :: associate a string with a response
      [%steal res=resource =rul]            :: stop serving a resource w/ a tag
      [%treat ~]                            :: toggle nut
  ==
--