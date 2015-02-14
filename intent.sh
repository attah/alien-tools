#!/bin/bash
source /opt/alien/system/script/platform_envsetup.sh

export PATH=$ANDROID_ROOT/vendor/bin:$ANDROID_ROOT/sbin:$ANDROID_ROOT/bin:$ANDROID_ROOT/xbin:$PATH

declare -a jars=("apache-xml.jar" "services.jar" "android.policy.jar" "framework_ext.jar" "framework.jar" "ext.jar" "bouncycastle.jar" "core-junit.jar" "core.jar")


for jar in "${jars[@]}"
do
    export BOOTCLASSPATH=${ANDROID_ROOT}/framework/$jar:${BOOTCLASSPATH}
done

export CLASSPATH=${ANDROID_ROOT}/framework/am.jar
exec $ANDROID_ROOT/bin/app_process $ANDROID_ROOT/bin com.android.commands.am.Am broadcast -a $@

