# .fishrc

################## Title ########################
# This is template
#################################################


################## fzfの設定 ####################
set -U FZF_LEGACY_KEYBINDINGS 0
set -U FZF_REVERSE_ISEARCH_OPTS "--reverse --height=100%"
#################################################

################# 自動でls ######################
functions --copy cd standard_cd
function cd
    standard_cd $argv; and ls
end
#################################################
