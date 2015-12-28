if [ -f ~/.bashrc ]; then
  source ~/.bashrc
  export WORKON_HOME=~/Envs
  source /usr/local/bin/virtualenvwrapper.sh
fi

alias sbqshell='QUERYSLAVE=true python manage.py shell_plus --ptipython --vi'
alias sbshell='python manage.py shell_plus --ptipython --vi'
alias sbqrun='QUERYSLAVE=true python manage.py runserver'
alias sbrun='python manage.py runserver --settings=settings.dev_sav'
alias sbrunplus='python manage.py runserver_plus --threaded --settings=settings.dev_sav'
alias gotosb='cd ~/sbssh/sendbloom/'
alias sbtest='python manage.py test --settings=settings.test'
alias southmigrate='python manage.py schemamigration cordata --auto | python manage.py migrate cordata --delete-ghost-migrations'
alias tset='git checkout diagnose -- cordata/settings.py'
alias pset='git checkout staging-master -- cordata/settings.py'
alias glo='git log --graph --oneline --abbrev --decorate --all'
alias replylogs='ssh -t replydetector "tail -f /home/ubuntu/sendbloom/sending/log/replyDetectionTallPerson.log"'
alias vi='vim'
PATH=/opt/local/bin:$PATH
