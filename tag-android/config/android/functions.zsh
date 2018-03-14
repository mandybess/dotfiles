#silly parse Logcat output
alog () {
    parser=ack
    if [[ -e `which ack` ]]; then
        parser=grep
    fi
    if (( $# == 0 )); then
        adb logcat -v time
    elif [[ $1 == "runtime" ]]; then
        pattern='E/AndroidRuntime'
        adb logcat -v time | $parser --ignore-case $pattern
    else
        adb logcat -v time | $parser --ignore-case $@
    fi
}

# take an android screenshot - for pre nougat devices
# adapted off alias from http://blog.shvetsov.com/2013/02/grab-android-screenshot-to-computer-via.html
ascreen(){
    _file="android_screenshot-`date +"%m_%d_%y-%H_%M_%S"`"
    _dir="$HOME/Desktop"
    target=$_dir/$_file.png
    adb shell screencap -p | perl -pe 's/\x0D\x0A/\x0A/g' > $target

    opened_already="no"
    uploaded_already="no"
    for arg in "$@"; do
        [[ $uploaded_already == "no" && ($arg == "upload" || $arg == "up") ]] && \
            uploaded_already="yes" && \
            cloudapp $target
        [[ $opened_already == "no" && $arg == "open" ]] && \
            opened_already="yes" && \
            open $target
    done
}

# take a screen shot for post nougat devices
# from: https://stkent.github.io/2016/08/28/capturing-Nougat-screenshots-using-adb-shell.html
screenshot(){
    _file="android_screenshot-`date +"%m_%d_%y-%H_%M_%S"`"
    _dir="$HOME/Desktop"
    target=$_dir/$_file.png

    adb shell screencap -p > $target
}


# record a video of whatever the connected devices is
record(){
    # start recording
    adb shell screenrecord /sdcard/demo.mp4

    # Download the video
    # adb pull /sdcard/demo.mp4

    # Delete the video from the device
    # adb shell rm /sdcard/demo.mp4
}


# grab the video recorded from the above (screenrecord) function
# and put it on the Desktop
grab(){
    # Download the video
    adb pull /sdcard/demo.mp4 ~/Desktop

    # Delete the video from the device
    adb shell rm /sdcard/demo.mp4
}

    # Download the video
    adb pull /sdcard/demo.mp4 ~/Desktop

    # Delete the video from the device
    adb shell rm /sdcard/demo.mp4
}

avd(){
    emulator -list-avds | cat -n
    printf "Select AVD: "
    read index
    avd=$(emulator -list-avds | sed "${index}q;d")
    echo "Selected $avd"
    emulator -avd $avd -netdelay none -netspeed full
}

