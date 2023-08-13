if status is-interactive
    # Commands to run in interactive sessions can go here
end


if status --is-login
    set -gx PATH $PATH ~/.cargo/bin
    set -gx PATH $PATH ~/balena-cli

end

function init --on-event fish_prompt
    macchina
end

pyenv init - | source
starship init fish | source
