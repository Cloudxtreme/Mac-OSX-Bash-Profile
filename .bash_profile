#   -------------------------------------------------------------
#   NETWORKING
#   -------------------------------------------------------------
    alias netCons='lsof -i'                                                     # netCons:      Show all open TCP/IP sockets
    alias flushDNS='dscacheutil -flushcache'                                    # flushDNS:     Flush out the DNS Cache
    alias lsock='sudo /usr/sbin/lsof -i -P'                                     # lsock:        Display open sockets
    alias net='ping google.com'                                                 # net:          Cheat
    alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'                           # lsockU:       Display only open UDP sockets
    alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'                           # lsockT:       Display only open TCP sockets
    alias en0="ifconfig en0 | grep ether"                                       # ipInfo0:      Get info on connections for en0
    alias en1="ifconfig en1 | grep ether"                                       # ipInfo1:      Get info on connections for en1
    alias openPorts='sudo lsof -i | grep LISTEN'                                # openPorts:    All listening connections
    alias showBlocked='sudo ipfw list'                                          # showBlocked:  All ipfw rules inc/ blocked IPs
    alias getip="curl ipecho.net/plain ; echo"                                  # getip:        Preferred ip echo implementation
    alias inet="ifconfig | grep inet"                                           # inet:         Preferred ifconfig implementation
    alias prof="atom ~/.bash_profile"                                           # prof:         Preferred bash_profile edit implementation
    alias re='source ~/.bash_profile'                                           # re:           Preferred bash_profile reload implementation
    alias mem='sudo purge'                                                      # re:           Flush memory

#   -------------------------------------------------------------
#   TERMINAL / COMMON
#   -------------------------------------------------------------
    alias .='cd ~'                                                              # .:            Go to Home directory from anywhere
    alias w='pwd'                                                               # w:            List working directory
    alias c="cd"                                                                # c:            Show current directory
    alias f='open -a Finder ./'                                                 # f:            Opens current directory in MacOS Finder
    alias cp='cp -iv'                                                           # cp:           Preferred implementation
    alias mv='mv -iv'                                                           # mv:           Preferred implementation
    alias edit='atom'                                                           # edit:         Opens any file in atom editor
  # alias edit='subl'                                                           # edit:         Opens any file in sublime editor
    alias ls='ls -lah $LS_COLOR'                                                # ls:           Preferred implementation
    alias path='echo -e ${PATH//:/\\n}'                                         # path:         Echo all executable Paths
    alias cic='set completion-ignore-case On'                                   # cic:          Make tab-completion case-insensitive
    alias des='cd ~/Desktop'                                                    # des:          Go to desktop from anywhere
    alias dow='cd ~/Downloads'                                                  # dow:          Go to downloads from anywhere
    alias doc='cd ~/Documents'                                                  # doc:          Go to Documents from anywhere

#   -------------------------------------------------------------------------------------------------------------------------------------------
    mcd () { mkdir -p "$1" && cd "$1"; }                                        # mcd:          Makes new Dir and jumps inside
    trash () { command mv "$@" ~/.Trash ; }                                     # trash:        Moves a file to the MacOS trash
    ql () { qlmanage -p "$*" >& /dev/null; }                                    # ql:           Opens any file in MacOS Quicklook Preview

#   -------------------------------------------------------------
#   SET DEFAULT EDITOR
#   -------------------------------------------------------------
    export EDITOR=/usr/bin/atom                                                 # Set default editor

#   -------------------------------------------------------------
#   FILE AND FOLDER MANAGEMENT
#   -------------------------------------------------------------
    zipf () { zip -r "$1".zip "$1" ; }                                          # zipf:         To create a ZIP archive of a folder

#   -------------------------------------------------------------
#   EXTRACT / MOST KNOWN ARCHIVE FORMATS
#   -------------------------------------------------------------
    extract () {
        if [ -f $1 ] ; then
          case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
             esac
         else
             echo "'$1' is not a valid file"
         fi
    }

#   -------------------------------------------------------------
#   UP MULTIPLE DIRECTORIES
#   -------------------------------------------------------------
    up() { cd $(eval printf '../'%.0s {1..$1}) && pwd; }

#   -------------------------------------------------------------
#   WEB / COMMON
#   -------------------------------------------------------------
    alias header='curl -I'                                                      # Get web server headers #
    alias headerc='curl -I --compress'                                          # Find out if remote server supports gzip / mod_deflate or not #
    alias apacheEdit='sudo edit /etc/httpd/httpd.conf'                          # apacheEdit:           Edit httpd.conf
    alias apacheRestart='sudo apachectl graceful'                               # apacheRestart:        Restart Apache
    alias editHosts='sudo edit /etc/hosts'                                      # editHosts:            Edit /etc/hosts file
    alias herr='tail /var/log/httpd/error_log'                                  # herr:                 Tails HTTP error logs
    alias apacheLogs="less +F /var/log/apache2/error_log"                       # Apachelogs:           Shows apache error logs
    alias pyServer="python -m SimpleHTTPServer"                                 # Python server from current directory tree at http://$HOSTNAME:8000/
    alias phpServer="php -S 127.0.0.1:8080"                                     # PHP server from current directory tree at http://$HOSTNAME:8080/

#   -------------------------------------------------------------
#   SYSTEMS OPERATIONS & INFORMATION
#   -------------------------------------------------------------
    alias mountReadWrite='/sbin/mount -uw /'                                    # mountReadWrite:       For use when booted into single-user
    alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"             # cleanupDS:            Recursively delete .DS_Store files
    alias ShowHidden='defaults write com.apple.finder ShowAllFiles TRUE'        # finderShowHidden:     Show hidden files in Finder
    alias HideHidden='defaults write com.apple.finder ShowAllFiles FALSE'       # finderHideHidden:     Hide hidden files in Finder


#   -------------------------------------------------------------
#   Setting PATH for Python 3.5 / Orginal in .bash_profile.pysave
#   -------------------------------------------------------------
    PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
    export PATH

#   -------------------------------------------------------------
#   Git Common Aliases
#   -------------------------------------------------------------
    alias gs='git status '
    alias ga='git add '
    alias gb='git branch '
    alias gc='git commit'
    alias gd='git diff'
    alias go='git checkout '
    alias gk='gitk --all&'
    alias gx='gitx --all'
    alias gp='git push origin master'                                           # gp: This one is a joke

    alias got='git '
    alias get='git '

#   -------------------------------------------------------------
#   Wget
#   -------------------------------------------------------------

    alias wall='wget -e robots=off -x --mirror --recursive --page-requisites'

#   -------------------------------------------------------------
#   Misc
#   -------------------------------------------------------------

    alias stat='du -sh *'                                                       # stat:     Displays disk usage information for directory's
    alias home='du -sh'                                                         # home:     Displays disk usage information for home directory
    alias disk='df -h'                                                          # disk:     Displays disk usage information / all disks
