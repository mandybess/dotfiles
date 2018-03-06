alias gr="./gradlew"

# build debug and open finder to show apk file
alias debug="./gradlew assembleDebug  && open **/build/outputs/apk"

# build release and open finder to show apk file
alias release="./gradlew assembleRelease && open **/build/outputs/apk"

# build amazon release
alias amazon="./gradlew clean amazon assembleRelease"

# run unit test
alias magic="./gradlew -Punit clean testDebug"

# kill emulator
alias kill="adb -s emulator-5554 emu kill"

# open android studio
alias oa="open -a 'Android Studio' ."

# upload apk to any thoughtbot slack channel
alias upload="./gradlew assembleDebug && ~/.config/android/amandroid.sh"
