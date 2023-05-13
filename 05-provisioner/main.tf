/*
You can use provisioners to model specific actions on the local machine or
 on a remote machine in order to prepare servers or
 other infrastructure objects for service.
1. The file provisioner copies files or directories from the machine running
    Terraform to the newly created resource. The file provisioner supports both ssh and winrm type connections.
2. The local-exec provisioner invokes a local executable after a resource is created.
    This invokes a process on the machine running Terraform, not on the resource. See the remote-exec provisioner to run commands on the resource.
3. The remote-exec provisioner invokes a script on a remote resource after it is created.
This can be used to run a configuration management tool, bootstrap into a cluster, etc. To invoke a local process, see the local-exec provisioner instead. The remote-exec provisioner requires a connection and supports both ssh and winrm.

*/