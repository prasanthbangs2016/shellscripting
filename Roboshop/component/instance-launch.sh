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


aws ec2 run-instances --launch-template LaunchTemplateId=${LID}a45,Version=${version} --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=fron${COMPONENT}}]" | jq

