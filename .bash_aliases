# Git aliases
alias gc='git commit -am'
alias gp='git push'
alias gs='git status -sb'
alias gl='git log --graph --abbrev-commit --decorate --all --format=format:"%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(dim white) - %an%C(reset) %C(bold green)(%ar)%C(reset)%C(bold
yellow)%d%C(reset)%n %C(white)%s%C(reset)"'
alias ga='git add'
alias gbh="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) -
%(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"
alias grs='git reset --hard'
