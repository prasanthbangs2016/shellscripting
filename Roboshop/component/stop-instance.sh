#/bin/bash
instance_id=$1

#(-z) it is going to validate whether component is empty
if [ -z "$instance_id" ]; then
  echo "instance_id input is needed"
  exit 1
fi

stop_instance=$(aws ec2 describe-instances --filters "Name=tag:Name,Values=${instance_id}" | jq .Reservations[].Instances[].State.Name | xargs -n1)

if [ "${stop_instance}" = "running" ]; then
  echo "Instance is already running"
  exit 0
fi

if [ "${stop_instance}" = "stopped" ]; then
  echo "Instance is already running/stopped and exist hence cannot start"
  exit 0
fi

#start instance
aws ec2 stop-instances --instance-ids ${instance_id}



