#!/bin/bash
#author                                                  : AlphonceE Daktari
#CopyRights                                              : Landmark Technologies
#Contact                                                 : +1 214 563 5695 / +1 469 563 1973
echo "Enter GitHub Personal Access Token:"
read token
#echo $token >token.txt
#cat token.txt
cat ~/.ssh/id_rsa.pub
#if condition to validate weather ssh keys are already present or not
if [$? -eq 0]
then
              echo "SSH keys are already present..."
else
echo"SSH keys are not present..., create the sshkeys using ssh-keygen command"
ssh-keygen -t rsa
echo "Key successfully generated"
fi
shhkey= cat ~/.ssh/id/_rsa.pub
if [$? -eq 0]
then
echo "successfully copied the token to GitHub"
exit 0
else
echo "Failure in generating the key"
exit 1
fi

