REGISTRATION_APP_URL=registration-pal-alanatan.apps.evans.pal.pivotal.io
BACKLOG_APP_URL=backlog-pal-alanatan.apps.evans.pal.pivotal.io
ALLOCATIONS_APP_URL=allocations-pal-alanatan.apps.evans.pal.pivotal.io
TIMESHEETS_APP_URL=timesheets-pal-alanatan.apps.evans.pal.pivotal.io

echo "curl -i -XPOST -H"Content-Type: application/json" https://${REGISTRATION_APP_URL}:8083/registration -d'{"name": "Pete"}'"
echo "curl -i https://${REGISTRATION_APP_URL}:8083/users/${USER_ID}"




cd ~/workspace/assignment-submission
echo "./gradlew cloudNativeDeveloperDistributedSystemDeployment \
    -PregistrationServerUrl=https://${REGISTRATION_APP_URL} \
    -PbacklogServerUrl=https://${BACKLOG_APP_URL} \
    -PallocationsServerUrl=https://${ALLOCATIONS_APP_URL} \
    -PtimesheetsServerUrl=https://${TIMESHEETS_APP_URL}"
