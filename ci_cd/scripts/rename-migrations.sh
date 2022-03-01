#! /bin/bash
migration_files=($RAILS_ROOT/db/migrate/*.rb)
i=0
# backup previos migration
tar cvfz migrations.bak.tar.gz $RAILS_ROOT/db/migrate
for f in "${migration_files[@]}"; do
    new_file=$(echo $f | sed "s/db\/migrate\/\([0-9]*\)/db\/migrate\/202101$(printf '%05d\n' $i)/")
    mv $f $new_file
    i=$(( i + 1 ))
done