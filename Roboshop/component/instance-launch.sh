#/bin/bash
COMPONENT=$1

#validating component
#string comparision
#(-z) it is going to validate whether component is empty
if [ -z "$COMPONENT" ]; then
  echo "component input is needed"
  exit 1
fi

LID=lt-0b86176ba30da7a45
version=1

#single quote wont for work variable hence we added double quotes
aws ec2 run-instances --launch-template LaunchTemplateId=${LID},Version=${version} --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=${COMPONENT}}]" | jq

