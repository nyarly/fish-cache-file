function __cache_zap --description 'Deletes cache files for the current directory under <ns>' --argument ns anchor extra_find
	for f in (eval find (__cache_dir $ns) -name (__cache_key $anchor) $argv[3..-1] -print)
    rm $f
  end
end
