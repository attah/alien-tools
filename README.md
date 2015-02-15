# alien-tools
Collection of tools to call android commands in alien-dalvik from the outside.

Currently only containing a script to call intents, but adding others should be trivial.
## intent.sh
Usage (as root): intent.sh my.awesome.app.INTENT
### How to find intents
To list intents installed on your system, run:
```
  /opt/alien/system/bin/dumpsys package r
```
  
Intents are also published in the AndroidManifest.xml inside the .apk (which is essentially a .zip).
If the manifest in the app of your choice is in some weird binary format, try this:
https://code.google.com/p/android-random/source/browse/trunk/axml2xml/axml2xml.pl
