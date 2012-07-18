pwd
$ /home/hugoshi/work/CloudBlaze
$ cd ..
$ cd blaze
$ ls
adaptors  blaze.egg-info  dist  #.gitignore#  scratch.py   setup.py
blaze     build           docs  runblaze      scratch.py~
$ cd blaze
$ cd server/
$ cd test
bash: cd: test: No such file or directory
$ cd tests/
$ cd data
$ ls
blaze.config  blaze.config~  gold.hdf5  goldrec.hdf5  redis.db  redis.log  test.npy
$ rm redis.*
$ rm redis.*
$ rm redis.*
$ rm redis.*

$ $ 
$ rm redis.*

rm: cannot remove `redis.*': No such file or directory
$ $ 
$ 
$ 
$ rm redis.*

rm: cannot remove `redis.*': No such file or directory
$ $ 
$ 
$ 
$ pwd
/home/hugoshi/work/blaze/blaze/server/tests/data
$ ls
blaze.config  blaze.config~  gold.hdf5  goldrec.hdf5  test.npy
$ rm redis.*

$ $ pwd
/home/hugoshi/work/blaze/blaze/server/tests/data
$ cd 
$ cd work
$ cd CloudBlaze
$ ls
05b2c037-f82d-4b04-843a-bb5d1d98b820.ipynb
0e22c8c7-a6be-4b34-90ea-c5fe6baf1cd5.ipynb
21fa059e-4e5b-42d1-abaa-3419473fa8a1.ipynb
255a4221-e0d8-461b-bd3d-bc5df83111ab.ipynb
3bea07d9-674d-4da1-b363-c4cf6d0ec963.ipynb
47580fe4-0c68-47e9-a062-0564f1daeb76.ipynb
4cd51d34-90a9-444a-bdc1-bc08397f31fd.ipynb
562b6ce5-823f-4894-a1a3-78c6fa13f99e.ipynb
5b3b35ab-82a9-4327-97e9-a4a15ff91502.ipynb
62d1bf53-b0d2-40d3-a375-bdff562c6907.ipynb
642267f4-ece9-4f6a-a9bb-bef38a21af73.ipynb
822179d2-4cd6-434b-8024-90bcf2d3c4e9.ipynb
8b9f95e0-41d4-45ef-abea-ef0952806c50.ipynb
987f32ff-a46c-49b8-9297-27f8a6b9cc12.ipynb
a888671d-0cd6-43b4-9083-2a5f3cb34789.ipynb
a9ad7f66-db35-444d-a24a-16fa666c32f1.ipynb
adace201-5678-4a17-b2b3-0fa0fe61986e.ipynb
b25b6c38-5de9-450a-9db9-9905cdb34117.ipynb
cd6561a6-9a7c-4f46-b805-f8831a9173cb.ipynb
cf414010-6124-43fe-b51b-5809522a43c0.ipynb
cloudblaze
cloudblaze.egg-info
d52c81d2-5475-4029-a9e6-696d29931712.ipynb
d7ce6918-6966-4a36-ba6b-f99cf6cece8a.ipynb
efc1d03e-828c-4de5-9ee0-12713221c76b.ipynb
mac_install.org
README.rst
requirements.txt
runcloudblaze
rundebug
rundebug~
setup.py
setup.py~
$ ./rundebug 
/home/hugoshi/work/CloudBlaze/cloudblaze/blazeweb/scripts/run.py:3: UserWarning: libevent version mismatch: system version is '2.0.16-stable' but this gevent is compiled against '2.0.12-stable'
  import gevent
WARNING:root:epoll module not found; using select()
INFO:werkzeug: * Restarting with reloader
/home/hugoshi/work/CloudBlaze/cloudblaze/blazeweb/scripts/run.py:3: UserWarning: libevent version mismatch: system version is '2.0.16-stable' but this gevent is compiled against '2.0.12-stable'
  import gevent
WARNING:root:epoll module not found; using select()
Namespace(back_address='tcp://127.0.0.1:5556', datapath=None, disco=None, front_address='tcp://127.0.0.1:5555', namespace='main', no_redis=False, rebuild_config=False, redis_host='localhost', redis_port=6379, server_name='myserver', skip_config=False)
datapath /home/hugoshi/work/blaze/blaze/server/tests/data
Traceback (most recent call last):
  File "/usr/local/lib/python2.7/dist-packages/gevent/greenlet.py", line 390, in run
    result = self._run(*self.args, **self.kwargs)
  File "cloudblaze/blazeweb/scripts/rundebug.py", line 6, in helper
    run.main()
  File "/home/hugoshi/work/CloudBlaze/cloudblaze/blazeweb/scripts/run.py", line 118, in main
    b = blazebroker.BlazeBroker(frontaddr, backaddr, config)
  File "/home/hugoshi/work/blaze/blaze/server/blazebroker.py", line 172, in __init__
    protocol_helper=protocol_helper)
  File "/home/hugoshi/work/blaze/blaze/server/blazebroker.py", line 66, in __init__
    self.frontend.bind(frontaddr)
  File "socket.pyx", line 447, in zmq.core.socket.Socket.bind (zmq/core/socket.c:4312)
ZMQError: Address already in use
<Greenlet at 0x43b15f0: helper> failed with ZMQError

INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
INFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
  C-c C-cINFO:blaze.server.rpc.server:Heartbeat failure, attempting to reconnect in 1.00 sec...
Closing remaining open files: /home/hugoshi/work/blaze/blaze/server/tests/data/goldrec.hdf5... done /home/hugoshi/work/blaze/blaze/server/tests/data/gold.hdf5... done
$ 
$ 
$ 
$ 
$ ./rundebug 
/home/hugoshi/work/CloudBlaze/cloudblaze/blazeweb/scripts/run.py:3: UserWarning: libevent version mismatch: system version is '2.0.16-stable' but this gevent is compiled against '2.0.12-stable'
  import gevent
WARNING:root:epoll module not found; using select()
INFO:werkzeug: * Restarting with reloader
/home/hugoshi/work/CloudBlaze/cloudblaze/blazeweb/scripts/run.py:3: UserWarning: libevent version mismatch: system version is '2.0.16-stable' but this gevent is compiled against '2.0.12-stable'
  import gevent
WARNING:root:epoll module not found; using select()
Namespace(back_address='tcp://127.0.0.1:5556', datapath=None, disco=None, front_address='tcp://127.0.0.1:5555', namespace='main', no_redis=False, rebuild_config=False, redis_host='localhost', redis_port=6379, server_name='myserver', skip_config=False)
datapath /home/hugoshi/work/blaze/blaze/server/tests/data
Traceback (most recent call last):
  File "/usr/local/lib/python2.7/dist-packages/gevent/greenlet.py", line 390, in run
    result = self._run(*self.args, **self.kwargs)
  File "cloudblaze/blazeweb/scripts/rundebug.py", line 6, in helper
    run.main()
  File "/home/hugoshi/work/CloudBlaze/cloudblaze/blazeweb/scripts/run.py", line 118, in main
    b = blazebroker.BlazeBroker(frontaddr, backaddr, config)
  File "/home/hugoshi/work/blaze/blaze/server/blazebroker.py", line 172, in __init__
    protocol_helper=protocol_helper)
  File "/home/hugoshi/work/blaze/blaze/server/blazebroker.py", line 66, in __init__
    self.frontend.bind(frontaddr)
  File "socket.pyx", line 447, in zmq.core.socket.Socket.bind (zmq/core/socket.c:4312)
ZMQError: Address already in use
<Greenlet at 0x48e85f0: helper> failed with ZMQError

  C-c C-cClosing remaining open files: /home/hugoshi/work/blaze/blaze/server/tests/data/goldrec.hdf5... done /home/hugoshi/work/blaze/blaze/server/tests/data/gold.hdf5... done
$ ./rundebug 
/home/hugoshi/work/CloudBlaze/cloudblaze/blazeweb/scripts/run.py:3: UserWarning: libevent version mismatch: system version is '2.0.16-stable' but this gevent is compiled against '2.0.12-stable'
  import gevent
WARNING:root:epoll module not found; using select()
INFO:werkzeug: * Restarting with reloader
/home/hugoshi/work/CloudBlaze/cloudblaze/blazeweb/scripts/run.py:3: UserWarning: libevent version mismatch: system version is '2.0.16-stable' but this gevent is compiled against '2.0.12-stable'
  import gevent
WARNING:root:epoll module not found; using select()
Namespace(back_address='tcp://127.0.0.1:5556', datapath=None, disco=None, front_address='tcp://127.0.0.1:5555', namespace='main', no_redis=False, rebuild_config=False, redis_host='localhost', redis_port=6379, server_name='myserver', skip_config=False)
datapath /home/hugoshi/work/blaze/blaze/server/tests/data
Traceback (most recent call last):
  File "/usr/local/lib/python2.7/dist-packages/gevent/greenlet.py", line 390, in run
    result = self._run(*self.args, **self.kwargs)
  File "cloudblaze/blazeweb/scripts/rundebug.py", line 6, in helper
    run.main()
  File "/home/hugoshi/work/CloudBlaze/cloudblaze/blazeweb/scripts/run.py", line 118, in main
    b = blazebroker.BlazeBroker(frontaddr, backaddr, config)
  File "/home/hugoshi/work/blaze/blaze/server/blazebroker.py", line 172, in __init__
    protocol_helper=protocol_helper)
  File "/home/hugoshi/work/blaze/blaze/server/blazebroker.py", line 66, in __init__
    self.frontend.bind(frontaddr)
  File "socket.pyx", line 447, in zmq.core.socket.Socket.bind (zmq/core/socket.c:4312)
ZMQError: Address already in use
<Greenlet at 0x407e5f0: helper> failed with ZMQError

  C-c C-cClosing remaining open files: /home/hugoshi/work/blaze/blaze/server/tests/data/goldrec.hdf5... done /home/hugoshi/work/blaze/blaze/server/tests/data/gold.hdf5... done
$ pwd
/home/hugoshi/work/CloudBlaze
$ cd cloudblaze
$ ls
blazeweb  continuumweb  __init__.py  __init__.pyc  ipython  #script.py#  script.py~
$ cd blazeweb/
$ ls
8e3579cf-89b6-4c0f-b991-d8aa6e17d1a7.ipynb  __init__.py   stockreport.pyc
a6ccfa66-9fd3-4aaa-bc59-440ab77d082b.ipynb  __init__.pyc  tasks
app.py                                      lib           templates
app.pyc                                     models        test
blazeclient.py                              scripts       test_adhoc
blazeclient.pyc                             src           views
build.sh                                    #start.py#    wsmanager.py
controllers                                 start.pyc     wsmanager.pyc
grunt.js                                    static
$ grunt coffee
path.existsSync is now called `fs.existsSync`.
Running "coffee:bokeh" (coffee) task
lib/bokehjs/src/coffee: compiled to lib/bokehjs/lib/js.

Running "coffee:bokeh_test" (coffee) task
lib/bokehjs/src/test/unittest: compiled to lib/bokehjs/lib/test/unittest.

Running "coffee:cdx" (coffee) task
static/coffee: compiled to static/js.

Done, without errors.
$ grunt coffee
path.existsSync is now called `fs.existsSync`.
Running "coffee:bokeh" (coffee) task
lib/bokehjs/src/coffee: compiled to lib/bokehjs/lib/js.

Running "coffee:bokeh_test" (coffee) task
lib/bokehjs/src/test/unittest: compiled to lib/bokehjs/lib/test/unittest.

Running "coffee:cdx" (coffee) task
static/coffee: compiled to static/js.

Done, without errors.
$ grunt coffee
path.existsSync is now called `fs.existsSync`.
Running "coffee:bokeh" (coffee) task
lib/bokehjs/src/coffee: compiled to lib/bokehjs/lib/js.

Running "coffee:bokeh_test" (coffee) task
lib/bokehjs/src/test/unittest: compiled to lib/bokehjs/lib/test/unittest.

Running "coffee:cdx" (coffee) task
static/coffee: compiled to static/js.

Done, without errors.
$ grunt watch
path.existsSync is now called `fs.existsSync`.
Running "watch" task
Waiting...OK
>> File "lib/bokehjs/src/test/unittest/speed_test.coffee" deleted.

Running "watch" task
Waiting...


  C-c C-c$ 
$ 
$ 
$ pwd
/home/hugoshi/work/CloudBlaze/cloudblaze/blazeweb
$ pwd
/home/hugoshi/work/CloudBlaze/cloudblaze/blazeweb
$ cd lib/bokehjs/
$ ls
build.sh  docs  lib  src  test  testdoc.html  vendor
$ cat build.sh 
#!/bin/bash

coffee --compile --output lib/ src/
$ coffee --compile --output src/test/adhoc/ lib/test/adhoc
File not found: lib/test/adhoc.coffee
$ mkdir lib/test/adhoc
$ coffee --compile --output lib/test/adhoc/ src/test/adhoc/
path.exists is now called `fs.exists`.
$ coffee --compile --output lib/test/adhoc/ src/test/adhoc/
path.exists is now called `fs.exists`.
$ coffee --compile --output lib/test/adhoc/ src/test/adhoc/
path.exists is now called `fs.exists`.
$ coffee --compile --output lib/test/adhoc/ src/test/adhoc/

path.exists is now called `fs.exists`.
$ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/


path.exists is now called `fs.exists`.
$ $ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/


path.exists is now called `fs.exists`.
$ $ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/


path.exists is now called `fs.exists`.
$ $ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/


path.exists is now called `fs.exists`.
$ $ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/


path.exists is now called `fs.exists`.
$ $ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/



path.exists is now called `fs.exists`.
$ $ $ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/



path.exists is now called `fs.exists`.
$ $ $ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/



path.exists is now called `fs.exists`.
$ $ $ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/



path.exists is now called `fs.exists`.
$ $ $ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/



path.exists is now called `fs.exists`.
$ $ $ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/



path.exists is now called `fs.exists`.
$ $ $ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/



path.exists is now called `fs.exists`.
$ $ $ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/
path.exists is now called `fs.exists`.
$ coffee --compile --output lib/test/adhoc/ src/test/adhoc/
path.exists is now called `fs.exists`.
$ coffee --compile --output lib/test/adhoc/ src/test/adhoc/

path.exists is now called `fs.exists`.
$ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/


path.exists is now called `fs.exists`.
$ $ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/



path.exists is now called `fs.exists`.
$ $ $ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/



path.exists is now called `fs.exists`.
$ $ $ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/



SyntaxError: In src/test/adhoc/speed_test.coffee, unmatched ) on line 143
    at SyntaxError (unknown source)
    at Lexer.exports.Lexer.Lexer.error (/usr/local/lib/node_modules/coffee-script/lib/coffee-script/lexer.js:682:13)
    at Lexer.exports.Lexer.Lexer.pair (/usr/local/lib/node_modules/coffee-script/lib/coffee-script/lexer.js:634:16)
    at Lexer.exports.Lexer.Lexer.literalToken (/usr/local/lib/node_modules/coffee-script/lib/coffee-script/lexer.js:456:16)
    at Lexer.exports.Lexer.Lexer.tokenize (/usr/local/lib/node_modules/coffee-script/lib/coffee-script/lexer.js:33:220)
    at Object.exports.compile.compile (/usr/local/lib/node_modules/coffee-script/lib/coffee-script/coffee-script.js:43:32)
    at compileScript (/usr/local/lib/node_modules/coffee-script/lib/coffee-script/command.js:180:33)
    at fs.stat.notSources.(anonymous function) (/usr/local/lib/node_modules/coffee-script/lib/coffee-script/command.js:150:18)
    at fs.readFile (fs.js:176:14)
    at Object.oncomplete (fs.js:297:15)
$ $ $ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/



path.exists is now called `fs.exists`.
$ $ $ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/



path.exists is now called `fs.exists`.
$ $ $ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/



path.exists is now called `fs.exists`.
$ $ $ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/



path.exists is now called `fs.exists`.
$ $ $ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/



path.exists is now called `fs.exists`.
$ $ $ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/



path.exists is now called `fs.exists`.
$ $ $ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/




path.exists is now called `fs.exists`.
$ $ $ $ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/




path.exists is now called `fs.exists`.
$ $ $ $ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/




path.exists is now called `fs.exists`.
$ $ $ $ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/




path.exists is now called `fs.exists`.
$ $ $ $ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/




path.exists is now called `fs.exists`.
$ $ $ $ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/




path.exists is now called `fs.exists`.
$ $ $ $ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/




path.exists is now called `fs.exists`.
$ $ $ $ $ coffee --compile --output lib/test/adhoc/ src/test/adhoc/
path.exists is now called `fs.exists`.
$ coffee --compile --output lib/test/adhoc/ src/test/adhoc/
path.exists is now called `fs.exists`.
$ coffee --compile --output lib/test/adhoc/ src/test/adhoc/
path.exists is now called `fs.exists`.
$ coffee --compile --output lib/test/adhoc/ src/test/adhoc/
path.exists is now called `fs.exists`.
$ coffee --compile --output lib/test/adhoc/ src/test/adhoc/
path.exists is now called `fs.exists`.
$ coffee --compile --output lib/test/adhoc/ src/test/adhoc/
path.exists is now called `fs.exists`.
$ 