eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
source <(fzf --zsh)
function y() {
	local tmp cwd; tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd" || builtin true
	command rm -f -- "$tmp"
}
export EDITOR="nvim"
export VISUAL="nvim"
pac() {
  pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S
}
alias unpac="sudo pacman -Rns $(pacman -Qdtq)"

