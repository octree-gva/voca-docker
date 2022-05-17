#! /bin/bash
migration_files=($RAILS_ROOT/db/migrate/*.rb)
i=0
prefix=${1:-202101}
for f in "${migration_files[@]}"; do
    new_file=$(echo $f | sed "s/db\/migrate\/\([0-9]*\)/db\/migrate\/$prefix$(printf '%05d\n' $i)/")
    mv $f $new_file
    i=$(( i + 1 ))
done