#!/bin/bash
ALIEN_SCRIPT_DIR=/opt/alien/system/script/
source $ALIEN_SCRIPT_DIR/platform_envsetup.sh

export PATH=$ANDROID_ROOT/vendor/bin:$ANDROID_ROOT/sbin:$ANDROID_ROOT/bin:$ANDROID_ROOT/xbin:$PATH

ALIEN_FRAMEWORK=$ANDROID_ROOT/framework


declare -a jars=("apache-xml.jar" "services.jar" "android.policy.jar" "framework_ext.jar" "framework.jar" "ext.jar" "bouncycastle.jar" "core-junit.jar" "core.jar")


for jar in "${jars[@]}"
do
    export BOOTCLASSPATH=${ALIEN_FRAMEWORK}/$jar:${BOOTCLASSPATH}
done

export CLASSPATH=$ALIEN_FRAMEWORK/am.jar
exec $ANDROID_ROOT/bin/app_process $ANDROID_ROOT/bin com.android.commands.am.Am broadcast -a $@

