alias gr="./gradlew"

# build debug and open finder to show apk file
alias debug="./gradlew assembleDebug  && open **/build/outputs/apk"

# build release and open finder to show apk file
alias release="./gradlew assembleRelease && open **/build/outputs/apk"

# build amazon release
alias amazon="./gradlew clean amazon assembleRelease"

# run unit test
alias magic="./gradlew -Punit clean testDebug"
