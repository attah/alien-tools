Outdated, use: https://github.com/CODeRUS/aliendalvik-control
# alien-tools
Collection of tools to call android commands in alien-dalvik from the outside.

Currently only containing a a few scripts, but adding others like them should be trivial.

## command.sh
Invokes a command supplied in $CMD with the jar fom $JAR added in the CLASSPATH, and any parameters in $PARAMS 
See below.

## am.sh input.sh etc.
Fills in the appropriate contents to $JAR and $CMD and invokes command.sh, passing all input ($@) in $PARAMS.
This is what you'll want to copy to make your on command-invoker.

## intent.sh
Runs am.sh with the appropriate parameters, so that all input that is needed is the name of the intent.
Usage (as root): intent.sh my.awesome.app.INTENT
### How to find intents
To list intents installed on your system, run:
```
  /opt/alien/system/bin/dumpsys package r
```
  
Intents are also published in the AndroidManifest.xml inside the .apk (which is essentially a .zip).
If the manifest in the app of your choice is in some weird binary format, try this:
https://code.google.com/p/android-random/source/browse/trunk/axml2xml/axml2xml.pl
