# 🎉 Fish Cool Config 🎉
# ~/.config/fish/config.fish
# 🌈 Fish Cool Config 🌈

# Prompt compatto senza spazi 🐟
function fish_prompt
    # Controllo se sei root
    if test (id -u) -eq 0
        set user_icon "👑"   # Emoji speciale per root
    else
        set user_icon "🔥"   # Emoji normale
    end

    set_color cyan
    echo -n "$user_icon"""
    #echo -n "$user_icon"(whoami)" "
    set_color green
    echo -n ">"(prompt_pwd)
    set_color yellow
    #echo -n "⏱ "(date "+%H:%M:%S")
    set_color magenta
    echo -n " "
    set_color normal
end

# Greeting 👋
function fish_greeting
    #echo "🌊 Benvenuto/a in Fish Shell! 🐟"
    #echo "💡 Suggerimento random: "(fortune | cowsay | lolcat ^/dev/null)
end

set -x PATH /opt/homebrew/bin /opt/homebrew/sbin /usr/local/bin /usr/bin /bin /usr/sbin /sbin /opt/X11/bin $PATH

fish_add_path /opt/homebrew/bin /opt/homebrew/sbin



alias ls="lsd --group-dirs=first --color=always"
alias ll="lsd -l --group-dirs=first --color=always"
alias la="lsd -a --group-dirs=first --color=always"
alias lla="lsd -la --group-dirs=first --color=always"
alias gs="git status"
alias gl="git log --oneline --graph --decorate"
alias gp="git pull"
alias dc="docker compose"
alias ..="cd .."
alias ...="cd ../.."
alias gab="ssh root@4.3.2.199"
alias noemi="ssh root@192.168.2.254"
alias off="sh ~/MEGA/script/bash/off_sleep.sh"
alias on="sh ~/MEGA/script/bash/on_sleep.sh"
#neofetch --ascii ~/pinguino.txt
set -x KUBECONFIG /home/gabriele/.kube/nrt-leonardo-admin.yaml
# Colori 🎨
set -U fish_color_command green
set -U fish_color_error red
set -U fish_color_param cyan
set -U fish_color_quote yellow
set -U fish_color_operator magenta
set -U fish_color_cwd blue


# Funzioni extra ⚙️
function mkcd
    mkdir -p $argv; and cd $argv
end

function serve
    python3 -m http.server $argv
end

# Prompt destro con info ⚡
function fish_right_prompt
    set_color brblack
    #echo "📅"(date "+%d/%m/%Y")"🔧"
    set_color normal
end
neofetch
