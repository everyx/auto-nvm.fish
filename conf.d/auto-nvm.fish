function __auto_source_nvm --on-variable PWD --description "Activate/Deactivate nvm on directory change"
    status --is-command-substitution; and return

    set --local dirs (pwd)
    if git rev-parse --show-toplevel &>/dev/null
        set --append dirs (realpath (git rev-parse --show-toplevel))
    end

    set --local NV_FILE_NAMES .nvmrc .node-version
    for nv_file in $dirs/$NV_FILE_NAMES
        if test -e "$nv_file"
            set ver (head -n 1 $nv_file)
            if nvm use --silent $ver
                return
            end
        end
    end

    nvm use --silent default
end
