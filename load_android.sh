rm -rf www
rm -rf camTest/www
broccoli build www
mv www camTest
cd camTest
cordova run android
