token=${{ secrets.DRATA_TOKEN }}

curl -i -X POST \
  https://public-api.drata.com/public/workspaces/1/reports \
  -H 'Authorization: Bearer "$token"' \
  -H 'Content-Type: multipart/form-data' \
  -F 'name=sast scan results test' \
  -F type=SOC2_TYPE_I \
  -F filedAt=2023-07-14 \
  -F 'description=test of sast scan' \
  -F ownerId=1 \
  -F renewalDate=2024-07-14 \
  -F renewalScheduleType=ONE_YEAR \
  -F 'file=@sast-report.pdf' \