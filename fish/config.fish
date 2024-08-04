if status is-interactive
    function fish_greeting
        pokemon-colorscripts -r --no-title
    end
end

alias nv=nvim

eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)

fzf --fish | source
starship init fish | source

export FZF_DEFAULT_COMMAND="fd . $HOME"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d . $HOME"

set -gx NVM_DIR ~/.nvm
set -gx XDG_CONFIG_HOME ~/.config
source ~/.config/fish/conf.d/nvm.fish

bind \cz 'fg 2>/dev/null; commandline -f repaint'
