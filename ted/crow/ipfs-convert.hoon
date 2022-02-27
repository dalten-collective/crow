/-  spider, store=graph-store, *post, *resource, crow
/+  *strandio
::
=,  strand=strand:spider
=,  strand-fail=strand-fail:libstrand:spider
::
::  ipfs-convert - convert images posted to chat into links
::  to ipfs version of same, posted to your own ipfs instance
::
::  croaks:
::     do both of these to allow for configuration
::    [%string `'!ipfs-convert']
::    [%curler ~]
::    and [%steal [%string '!ipfs-convert']] when ready
::      -alternatively-
::    add using
::    (create this in the dojo and assign it a face, replacing <text>s):
::    :+  %teach
::      :+  %haul  %ipfs-convert
::      !>  ^-  (unit @t)
::      :-  ~  
::      %+  (cury cat 3)  'Basic '
::      %-  en:base64:mimes:html
::      (as-octs:mimes:html '<infura-username>:<infura-password>')
::    <(unit frens:one:crow)>
::    and only croak [%curler ~]
::
::  use:
::    * !ipfs-convert %creds username:password (to an infura ipfs instance)
::      - adds credentials for uploading ipfs data to the 'state'
::        of the thread which crow will maintain for future use
::    * post an image in chat ending in a .png, .jpg (or .jpeg)
::      or .gif
::
::  first a helper core
::
|%
+$  cred  @t
+$  node  @t
+$  ccru  (unit client-response:iris)
+$  meme  meme:crow
+$  sadl  sadle:crow
::
++  three
  |=  jon=json
  =,  dejs:format
  ((ot ~[['Hash' so] ['Name' so] ['Size' so]]) jon)
++  slice
  |=  curd=cord
  =-  ?~(- *(set cord) (sy u.-))
  %+  rush  curd
  %+  ifix  [(star ace) (star ace)]
  %+  more  (plus (mask " \0a"))
  (cook crip (plus ;~(less (mask " \0a") next)))
--
::
::
::
^-  thread:spider
|=  arg=vase
=/  m  (strand ,vase)
^-  form:m
::  first get the bowl
;<  =bowl:spider   bind:m  get-bowl
=,  bowl
::  then get the info
=+  !<([me=@tas sadle=sadl res=resource mynd=vase] arg)
::  exclude non-post sadles and expose post
?+    -.sadle  (pure:m !>(`meme`[%keep me mynd]))
    %post
  =*  post  post.sadle
  ::  setup graph interactions if we need them
  =+  ?.  =(our entity.res)  [tik=now tok=%graph-push-hook]
      [tik=(add now ~s1) tok=%graph-store]
  ::
  ::  check our mynd for our configuration information
  ::
  ?~  mind=!<((unit cred) mynd)
    =+  con=`(list content:store)`contents.post
    ?:  ?=(%text -<.con)
      ::  if we have no mind and we might have an instruction, check
      =+  werd=(slice ->.con)
      ?~  ~(tap in werd)
        (pure:m !>([%keep me mynd]))
        ::  magic word
      ?.  (~(has in werd) '!ipfs-convert')
        ;<  ~  bind:m  (flog-text "no !ipfs-convert")
        (pure:m !>([%keep me mynd]))
        ::  instruction
      =.  werd  (~(del in werd) '!ipfs-convert')
      ?.  (~(has in werd) '%creds')
        ;<  ~  bind:m  (flog-text "no %creds")
        (pure:m !>([%keep me mynd]))
        ::  uid+pw
      =.  werd  (~(del in werd) '%creds')
      =+  crud=`(list @t)`~(tap in werd)
      ?.  ?=([@ ~] crud)
        ;<  ~  bind:m  (flog-text "not right form")
        (pure:m !>([%keep me mynd]))
        ::  delete the post and return the state
      =+  :*  %pass   /crow/haul/(scot %tas me)
              %agent  [entity.res tok]
              %poke   %graph-update-3
              !>  ^-  update:store
              :-  tik
              [%remove-posts res (sy ~[index.post])]
          ==
      ;<  ~      bind:m  (send-raw-card -)
      =+  :*  %says  me
              [%text '-ipfs-convert %configured \0amaybe `[%steal <resource> [%string \'!ipfs-convert\']]` next']~
              res
              =-  !>(`(unit cred)`[~ (cat 3 'Basic ' -)])
              %-  en:base64:mimes:html
              (as-octs:mimes:html -.crud)
          ==
      (pure:m !>(-))
    ::  has no mind & didn't get instructions, but was called
    =+  :*  %says  me
            =-  [%text -]~
            %-  (cury rap 3)
            :~  'I have not yet been configured with credentials\0a'
                'Configure me using `!ipfs-convert %creds <username> <password>\0a`'
                '(I work with infura ipfs credentials)\0a'
                'Or, maybe `[%steal <resource> <croak>]` whatever\'s triggering me'
            ==
            res  mynd
        ==
    (pure:m !>(-))
  ::
  ::
  ::  with credentials, evaluate the url(s)
  ::
  =/  talk=(set content:store)
    (sy contents.post)
  =/  werd=(set cord)
    %-  slice
    %-  ~(rep in talk)
    |=  [in=content:store out=cord]
    ?.(?=(%text -.in) out (rap 3 ~[+.in ' ' out]))
  ?:  ?&  (~(has in werd) '-ipfs-convert')                 ::  ignore prior work so we don't loop
          (~(has in werd) '%ignore')
      ==
    (pure:m !>([%keep me mynd]))
    ::
  ?.  (~(any in talk) |=(a=content:store ?=(%url -.a)))
    (pure:m !>([%keep me mynd]))
    ::
  =/  urls=(list tape)
    %-  ~(rep in talk)
    |=  [c=content:store o=(list tape)]
    ?.  ?=([%url @] c)  o
    =+  test=(trip +.c)                                    ::  record any obvious images
    ?.  ?=(~ (find ".jpg" test))   [test o]
    ?.  ?=(~ (find ".jpeg" test))  [test o]
    ?.  ?=(~ (find ".png" test))   [test o]
    ?.  ?=(~ (find ".gif" test))   [test o]  o
  ::
  ::  get ipfs hash(es)
  ::
  =+  imgs=*(list content:store)
  |-
  =*  loo  $
  ?~  urls
    =+  :*  %pass   /crow/no/witnesses/(scot %da now)
            %agent  [our tok]
            %poke   %graph-update-3
            !>([tik [%remove-posts res (sy ~[index.post])]])
        ==
    ;<  ~            bind:m  (send-raw-card -)             ::  remove your post at the end
    =.  imgs
      %+  welp  imgs
      :~  [%text '-ipfs-convert %ignore']
          [%mention author.post]
      ==    
    (pure:m !>([%says me imgs res mynd]))
  ::::
  ;<  bin=cord       bind:m  (fetch-cord -.urls)           ::  get value of image
  ;<  ~              bind:m  (wait (add now ~s3))
  ?~  bin                                                  ::  if you cant, move on
    %=  loo
      urls  t.urls
    ::
        imgs
      %+  welp  imgs
      ~[[%text ' unable to process:'] [%url (crip i.urls)]]
    ==
  ::::
  =/  shak=@t  (crip (a-co:co (end 6 (sham eny))))         ::  build ipfs POST
  =/  body=@t
    %+  rap  3
    :~
      '----'  shak  '\0d\0a'
      'Content-Disposition: form-data; name=""; filename="test"'  '\0d\0a'
      'Content-Type: application/octet-stream'  '\0d\0a'
      '\0d\0a'
      bin  '\0d\0a'
      '----'  shak  '--'  '\0d\0a'
    ==
  =/  reqs=request:http
    :^    %'POST'
        'https://ipfs.infura.io:5001/api/v0/add'
      :~  'Authorization'^u.mind
          'Content-Type'^(cat 3 'multipart/form-data; boundary=--' shak)
      ==
    `(as-octs:mimes:html body)
  ;<  ~              bind:m  (send-request reqs)           ::  request a POST
  ;<  =ccru          bind:m  take-maybe-response           ::  get a response
  ;<  ~              bind:m  (wait (add now ~s3))
  ?~   ccru
    %=  loo
      urls  t.urls
    ::
        imgs
      %+  welp  imgs
      ~[[%text ' ipfs failed to load:'] [%url (crip i.urls)]]
    ==
  ::::
  ;<  resp=cord    bind:m  (extract-body u.ccru)
  ?~  jun=`(unit json)`(de-json:html resp)                 ::  parse the response
    %=  loo
      urls  t.urls
    ::
        imgs
      %+  welp  imgs
      ~[[%text resp] [%url (crip i.urls)]]
    ==
  ::::
  =/  jon=[hash=@t fash=@t sash=@t]   (three u.jun)        ::  parse the json 
  %=  loo
    urls  t.urls
  ::
      imgs
    %+  welp  imgs
    [%url (cat 3 'https://ipfs.io/ipfs/' hash.jon)]~
  ==
==