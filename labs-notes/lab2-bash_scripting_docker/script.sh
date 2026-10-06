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
push() {
    # Take the current directory
    local commit_message="$1"

    if git add .; then
        echo "We add Filies to Staged Area"
        if git commit -m "$commit_message"; then
            echo "From Staging Area to Repository"
            if git push origin main; then
                echo "Push to Github"
            else
                echo "Problem in Push"
            fi
        else
            echo "Problem in git commit"
        fi
    else
        echo "Problem in git add ."
    fi
}

push "commit message"
