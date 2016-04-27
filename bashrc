# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions



PS1="[\u@\h] \W \$ "

TITLEBAR='\[\e]0;\u@\h\a\]'
PS1="${TITLEBAR}[\u@\h] \W \$ "

#append to history file
shopt -s histappend
shopt -s cmdhist
#PROMPT_COMMAND='history -a'


#diff history files for each session
HISTFILESIZE=100000000
HISTSIZE=100000000

#ignore commands starting with space
HISTCONTROL=ignoreboth
HISTIGNORE='ls:bg:fg:history'
HISTTIMEFORMAT='[%m%d%y %k:%M] '

# User specific aliases and functions

# function for encryption/decryption 
function eme () {
  openssl enc -aes-256-cbc -salt -in $1 -out $1.enc
}
function dme () {
  openssl enc -aes-256-cbc -d -in $1 -out $1.new
}

function pw () {
  openssl enc -aes-256-cbc -d -in ~/.jes |grep $1
}
 
# define a function combining history and grep to save typing
function hg () { 
  history | grep $* ;
}

function pg () { 
  ps -ef | grep $* ;
}

function title () { 
  #hostname |cut -d. -f1 | sed -e 's/\.[^.]*\.[^.]*\(\.uk\)\{0,1\}$//' | awk '{ printf ("\033k%s\033\\", $NF) }' ;
  HOST=`hostname |cut -d. -f1`
  echo -e '\033k'$HOST'\033\\'

}

#calc
? () { echo "$*" | bc -l; }

#copy file from ssh host to my desktop
mecp () { scp "$@" ${SSH_CLIENT%% *}:Desktop/; }

#copy file from local machine to ssh machine
ucp (){ scp ${SSH_CLIENT%% *}:Desktop/upload/* .; }

#copy repo from sh01
repocp () {
   echo "Enter a blank dvd, yo"
   read ans
   DATE=`date +"%m%d%y"`
   ssh urdte-sh01 '(genisoimage -r -J -o - -J /repo)' > ~/repo-$DATE.iso
   growisofs -dvd-compat -Z /dev/sr0=/home/jespenc/repo-$DATE.iso
   eject /dev/sr0
}

#cd followed by ls
#cdl() {
#    builtin cd "${@:-$HOME}" && ls -al
#}


 alias ls='ls --color'
