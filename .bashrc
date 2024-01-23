neofetch

export PS1="\[\033[01;36m\]\w\n\[\033[01;35m\]\$\[\033[00m\] "

export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gsed/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/usr/local/opt/ncurses/bin:$PATH"
export PATH="/usr/local/opt/cpio/bin:$PATH"
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/man-db/libexec/bin:$PATH"
export PATH="/Users/juhan/local/xv6/xv6-d1/xfel:$PATH"
export PATH="/Users/juhan/.local/bin:$PATH"
export PATH="/usr/local/opt/openjdk@17/bin:$PATH"
export LANG=en_US.utf-8
export VISUAL=/usr/local/bin/nvim

export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"

alias ls='ls --color=auto'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
stty -ixon

rund1() {
    cd ~/local/xv6/xv6-d1
    rm kernel*
    scp Ubuntu:~/local/S081/xv6-riscv/kernel/kernel.bin .
    xfel version
    xfel ddr d1
    xfel write 0x40000000 kernel.bin
    xfel exec 0x40000000
    echo "open picocom now"
}

alias gitd='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias n=nvim
alias r=ranger

eval "$(starship init bash)"
