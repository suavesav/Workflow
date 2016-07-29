if [ -f ~/.bashrc ]; then
  source ~/.bashrc
  export WORKON_HOME=~/Envs
  source /usr/local/bin/virtualenvwrapper.sh
fi

alias sbshell='python manage.py shell_plus --ptipython --vi'
alias makemigrations='python manage.py makemigrations'
alias sbvenv='workon sbvenv'
alias migrate='python manage.py migrate'
alias pm='python manage.py'

alias gonotes='cd ~/sav_notes/'

alias glo='git log --graph --oneline --abbrev --decorate --all'
alias gpo='git pull origin'
alias gcm='git commit -m'
alias gau='git add -u'

alias vi='vim'

PATH=/opt/local/bin:$PATH
