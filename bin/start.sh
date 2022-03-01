#!/bin/bash
if [[ -z "${INSTANCE_UUID}" ]]; then
    NOW=(date "+%FT%T")
    CURRENT_TZ=(date "+%Z")
    echo "{\"uuid\": \"$INSTANCE_UUID\", \"last_start\": \"$($NOW)\", \"timezone\": \"$($CURRENT_TZ)\"}" > $RAILS_ROOT/public/__vocacity.json
fi

if [ $1 = "puma" ]
then
    bundle exec puma
elif [ $1 = "sidekiq" ]
then
    bundle exec sidekiq
fi