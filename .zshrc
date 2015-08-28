## aliases
alias gccW="gcc -Wall -Wextra -Werror"
alias ls="ls -G"
alias l="ls -lG"
alias mysql="/Applications/MAMP/Library/bin/mysql"
alias composer="/bin/composer.phar"
alias abuild="sudo mv www/master . && sudo ionic build android && sudo mv master www/ && adb uninstall com.ionicframework.adrexmobile624211 && adb -d install platforms/android/ant-build/*-debug.apk"
alias valgrind="valgrind --tool=memcheck --leak-check=yes"

alias movemp3="sh ~/.scripts/MoveMp3.sh"
alias ladrex="sh /Users/gmp/.scripts/LaunchAdrexEnv.sh"
## Completions
autoload -U compinit
compinit -C

## PHP

alias php="/Applications/MAMP/bin/php/php5.5.10/bin/php"

## case-insensitive (all),partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' \
    'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
export PATH=$PATH:/Android/android-sdk-mac_x86/tools

export MONGO_PATH=/usr/local/mongodb
export PATH=$PATH:$MONGO_PATH/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### postgresql app
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin"

export NVM_DIR="/Users/gmp/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export ANDROID_HOME="/Users/gmp/Documents/42/Android/android-sdk-macosx"
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

export PATH=$PATH:~/bin
alias make="make -j4"
alias go="open /Applications/Google\ Chrome.app --args --disable-web-security"
