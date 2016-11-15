alias ls='ls -G'
alias ll='ls -Gl'

#vi設定
alias vi='vim -u ~/.vimrc'
alias view='vim -R -u ~/.vimrc'
#alias openssl='/usr/local/opt/openssl/bin/openssl'

PATH="/usr/local/opt/openssl/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"

# nodebrew設定
export PATH=$HOME/.nodebrew/current/bin:$PATH

#Java
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

export NVM_DIR="/Users/a.yayoi/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

