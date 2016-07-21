source ~/.tmux-git/tmux-git.sh

export LC_ALL=en_US.utf-8 
export LANG="$LC_ALL"
export PS1="$Y\t$N $W$N$PROMPT_COLOR$N:$C\w$N\n"'$CURSOR_PROMPT '

alias cdu='cd ~/ua/uaweb/'
alias cdm='cd ~/ua/uaweb/magento/htdocs/'

alias vig='vi -O $(FILES=''; for f in `git show --format= --name-only`; do FILES="$FILES ../../$f"; done; echo $FILES)'

# AWS aliases
alias lsec2='aws ec2 describe-instances --output text --query '"'"'Reservations[*].Instances[*].[Tags[?Key==`Name`].Value | [0],State.Name,PrivateIpAddress,InstanceId,InstanceType]'"'"' | sort'
#alias lsasg='aws autoscaling describe-auto-scaling-groups --output text --query '"'"'AutoScalingGroups[*].Instances[*]'"'"''
alias lsasg='aws autoscaling describe-auto-scaling-groups --output text --query '"'"'AutoScalingGroups[*].Instances[*].[LaunchConfigurationName,LifecycleState,HealthStatus,AvailabilityZone,InstanceId]'"'"''
alias lselb='aws elb describe-load-balancers --output text --query '"'"'LoadBalancerDescriptions[*].[LoadBalancerName,Scheme,Instances[*].InstanceId | [0]]'"'"' | sort'
alias lsami='aws ec2 describe-images --owners self --output text --query '"'"'Images[*].[Name,ImageId]'"'"' | sort'
alias lsssl='aws iam list-server-certificates --output text --query '"'"'ServerCertificateMetadataList[*].[Expiration,ServerCertificateName]'"'"' | sort'

# Datadog keys
export DATADOG_API_TOKEN="xxxxxxxxx"
export DATADOG_APP_KEY="xxxxxxxxx"

# AWS auto-completion
complete -C aws_completer aws
