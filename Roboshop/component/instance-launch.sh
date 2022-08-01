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

#validate instance state and if it is already exist and running it wont create instance,it will create instance only when it is not available.

INSTANCE_STATE=$(aws ec2 describe-instances --filters "Name=tag:Name,Values=${COMPONENT}" | jq .Reservations[].Instances[].State.Name | xargs -n1)
if [ "$(INSTANCE_STATE)" = "running" ]; then
  echo "Frontend Instance is already running or stopped and exist hence cannot launch"
  exit 0
fi

if [ "$(INSTANCE_STATE)" = "stopped" ]; then
  echo "Frontend Instance is already running/stopped and exist hence cannot launch"
  exit 0
fi

#single quote wont for work variable hence we added double quotes
aws ec2 run-instances --launch-template LaunchTemplateId=${LID},Version=${version} --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=${COMPONENT}}]" | jq



