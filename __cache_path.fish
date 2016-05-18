function __cache_path -a ns anchor
  set -l cache_dir
  if [ -z $XDG_CACHE_HOME ]
    set cache_dir "$HOME/.cache/fish/cached_files/$ns"
  else
    set cache_dir "$XDG_CACHE_HOME/fish/cached_files/$ns"
  end
  mkdir -p $cache_dir

  set -l anchored_dir (lookup $anchor); or return 1
  set -l hashed_pwd ($anchored_dir | md5sum --text -)

  echo "$cache_dir/$hashed_pwd"
end
