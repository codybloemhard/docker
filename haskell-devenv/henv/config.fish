# FISH SETTINGS ----------------
set fish_greeting
set -U fish_color_normal normal
set -U fish_color_command brmagenta
set -U fish_color_end green
set -U fish_color_redirection green
set -U fish_color_quote yellow
set -U fish_color_error brred
set -U fish_color_param blue
set -U fish_color_operator green
set -U fish_color_escape bryellow
set -U fish_color_cwd green
set -U fish_color_cwd_root red
set -U fish_color_valid_path --bold
set -U fish_color_autosuggestion BD93F9
set -U fish_color_user brgreen
set -U fish_color_host normal
set -U fish_color_cancel brred
set -U fish_pager_color_completion normal
set -U fish_pager_color_description B3A06D yellow
set -U fish_pager_color_prefix white --bold --underline
set -U fish_pager_color_progress brwhite --background=cyan
set -U fish_color_match --background=brblue
set -U fish_color_comment gray
# GIT ----------------
abbr -a ga 'git add -A; git status'
abbr -a gr 'git reset'
abbr -a gd 'git diff'
abbr -a gc 'git commit -m'
abbr -a gdc 'git diff HEAD~0 --stat'
abbr -a gl 'git log'
abbr -a gb 'git branch'
abbr -a gp 'git push origin'
abbr -a gch 'git checkout'
abbr -a gam 'git commit --amend - m'
# HASKELL -------------
abbr -a cabu 'cabal update'
abbr -a cabi 'cabal install'
abbr -a cabr 'cabal run'
abbr -a cabb 'cabal build'
# MISC ----------------
abbr -a la 'ls -la'
abbr -a p 'python'
abbr -a vim 'nvim'
abbr -a v 'nvim'
abbr -a rmd 'rm -rf'
abbr -a ka 'sudo killall'
abbr -a libver 'dpkg -l | grep'
# VIM MODE ----------------
bind -M default -m default a backward-char
bind -M default -m default o forward-char
bind -M visual -m visual a backward-char
bind -M visual -m visual o forward-char
bind -M default -m insert h end-of-buffer
bind -M default l undo
fish_vi_key_bindings
# Don't search pacman for commands when command not found:
function fish_command_not_found
    __fish_default_command_not_found_handler $argv
end
