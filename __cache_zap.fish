function __cache_zap -a ns anchor
  set -l cache_file (__cache_path $ns $anchor); and rm $cache_file
end
