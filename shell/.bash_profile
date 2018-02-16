# Paths
export PATH=/usr/local/bin:$PATH
export DOCUMENTS="$HOME/Documents"
export DOWNLOADS="$HOME/Downloads"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '${DOWNLOADS}/google-cloud-sdk/path.bash.inc' ]; then source '${DOWNLOADS}//google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '${DOWNLOADS}/google-cloud-sdk/completion.bash.inc' ]; then source '${DOWNLOADS}//google-cloud-sdk/completion.bash.inc'; fi

# Load shell dotfiles
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
        [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
