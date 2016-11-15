# nvm設定
[[ -s ~/.nvm/nvm.sh ]] && . ~/.nvm/nvm.sh
nvm use default
npm_dir=${NVM_PATH}_modules
export NODE_PATH=$npm_dir

# 毎回実行しなくていいように設定を反映させるコマンドも書いておく
source ~/.nvm/nvm.sh

#.bashrcをロード
source ~/.bashrc

#nodebrew
nodebrew use latest
