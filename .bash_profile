if [ -f ~/.bashrc ]; then
  source ~/.bashrc
  export WORKON_HOME=~/Envs
  source /usr/local/bin/virtualenvwrapper.sh
fi

alias sbqshell='QUERYSLAVE=true python manage.py shell_plus --ptipython --vi'
alias sbshell='python manage.py shell_plus --ptipython --vi'
alias sbqrun='QUERYSLAVE=true python manage.py runserver'
alias sbrun='python manage.py runserver --settings=settings.dev_sav'
alias runplus='python manage.py runserver_plus --threaded --settings=settings.dev_sav'
alias sbtest='python manage.py test --settings=settings.test'
alias makemigrations='python manage.py makemigrations'
alias sbvenv='workon sbvenv'
alias migrate='python manage.py migrate'
alias pm='python manage.py'

alias gosb='cd ~/sbssh/sendbloom/'
alias gonotes='cd ~/sav_notes/'

alias glo='git log --graph --oneline --abbrev --decorate --all'
alias gpo='git pull origin'
alias gcm='git commit -m'
alias gau='git add -u'
alias replylogs='ssh -t replydetector "tail -f /home/ubuntu/sendbloom/sending/log/replyDetectionTallPerson.log"'

alias vi='vim'

PATH=/opt/local/bin:$PATH
