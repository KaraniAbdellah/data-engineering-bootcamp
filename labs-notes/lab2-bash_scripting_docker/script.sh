# Condition


# Loops
# for filename in *.txt; do
#     echo "file processing"
# done

# Function
backup_project() {
    local
    name=$1 # $1: first argument
    mkdir -p backup
    if [ -e $name ]; then
        filename=$(basename $name)
        cp -r "$name" "backup/${filename}_$(date +%F-%H:%M)"
        echo "[OK] Backup of ${name}"
    else
        echo "${name} Does not exit"
    fi
}

# backup_project note.txt tasks.txt

# Function That Push Auto
push() { # push act_path message
    local
    $path_act =
}￼
LinkedIn · Sondoss CHTIOUI
Plus de 730 abonnés
