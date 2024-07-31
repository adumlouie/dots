if status is-interactive
    function fish_greeting
        pokemon-colorscripts -r --no-title
    end
end

alias nv=nvim

starship init fish | source
