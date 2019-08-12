rvm default
rvm default
set -g -x fish_greeting "Hallo mein Schatz"
alias iq="cd /Users/Faraz/development/iq"


 
#alias "gst"="clear; and git pull; and git status"
#alias "g-l"="gitg"
#alias "g-a"="clear; and git pull; and git add -A"
alias "g-master"="git checkout master"
alias "g-new-b"="git checkout -b "
alias "gch"="git checkout "
alias "gco"="git commit -m"
alias "gp"="git pull"
alias "ga"="git add "
alias "gd"="git diff "


function _gd
  clear         
  git diff $argv
  git status
	git pull
end 

function _ga
  clear
  git pull
  git add $argv
  git status
end 

function show_list
	set i 0
	echo "--0-- exit" 
	for line in (git status -s)
		set is_added  (string split " " -- $line)[1]
		if test "$is_added" != "M"
			set i (math $i + 1 )
			echo "--$i-- $line"
		end
	end
end

function gst
	show_list
	read -P "Which command? " command 
	if test "$command" = "0"
		return
	end
	read -P "Which line number? " number
	if test "$number" != "0" 
		set git_list (git status -s)
		eval $command (string split " " -- $git_list[$number])[3]
	  gst		
	end
end


alias "rs"="rails s"
alias "rdb"="rails db"
alias "rc"="rails c"
alias "migrate"= "rake db:migrate"
alias "db-create"= "rake db:create"
alias "db-drop"="rake db:drop"
alias "seed"="rake db:seed"

alias "ssh-iq-host"="ssh -p 22204 medlinq@iq.medlinq.com"
alias "remotebox-SSH"="ssh -c blowfish-cbc,arcfour -p 10022 root@144.76.154.135 -L 5000:144.76.154.135:18083 -N"
alias "remotebox-RDP"="ssh -c blowfish-cbc,arcfour -p 10022 root@144.76.154.135 -L 3389:144.76.154.135:3389 -N"


set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8
set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_hide_untrackedfiles 1

set -g __fish_git_prompt_color_branch magenta bold
set -g __fish_git_prompt_showupstream "informative"
set -g __fish_git_prompt_char_upstream_ahead "↑"
set -g __fish_git_prompt_char_upstream_behind "↓"
set -g __fish_git_prompt_char_upstream_prefix ""

set -g __fish_git_prompt_char_stagedstate "●"
set -g __fish_git_prompt_char_dirtystate "✚"
set -g __fish_git_prompt_char_untrackedfiles "…"
set -g __fish_git_prompt_char_conflictedstate "✖"
set -g __fish_git_prompt_char_cleanstate "✔"

set -g __fish_git_prompt_color_dirtystate blue
set -g __fish_git_prompt_color_stagedstate yellow
set -g __fish_git_prompt_color_invalidstate red
set -g __fish_git_prompt_color_untrackedfiles $fish_color_normal
set -g __fish_git_prompt_color_cleanstate green bold
## Fish git prompt
#set __fish_git_prompt_showdirtystate 'yes'
#set __fish_git_prompt_showstashstate 'yes'
#set __fish_git_prompt_showuntrackedfiles 'yes'
#set __fish_git_prompt_showupstream 'yes'
#set __fish_git_prompt_color_branch yellow
#set __fish_git_prompt_color_upstream_ahead green
#set __fish_git_prompt_color_upstream_behind red
#set -g fish_prompt_pwd_dir_length 0
#
## Status Chars
#set __fish_git_prompt_char_dirtystate '⚡'
#set __fish_git_prompt_char_stagedstate '→'
#set __fish_git_prompt_char_untrackedfiles '☡'
#set __fish_git_prompt_char_stashstate '↩'
#set __fish_git_prompt_char_upstream_ahead '+'
#set __fish_git_prompt_char_upstream_behind '-'
#
#
#function fish_prompt
#  set last_status $status
#
#  set_color $fish_color_cwd
#  printf '%s' (prompt_pwd)
#  set_color normal
#
#  printf '%s ' (__fish_git_prompt)
#
#  set_color normal
#end
set -g fish_user_paths "/usr/local/opt/qt/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/qt@5.5/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/qt@5.5/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/qt@5.5/bin" $fish_user_paths
