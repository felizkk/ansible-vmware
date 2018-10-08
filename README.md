# Ansible Tower Roadshow for VMWare 

No roles are used in the playbook because it is better to show a flat playbook at roadshows

Some Ansible Playbook examples for simple VMWare vCenter workloads
- rhtest_webserver_create        : create a new VM based on a template
- rhtest_webserver_subscribe_one : subscribe a RHEL VM to a RHEL subscription
- rhtest_webserver_subscribe     : subscribe all RHEL VMs (rhtest group) to RHEL subscription
- rhtest_webserver_unsubscribe   : unsubsribe RHEL from a VM
- rhtest_webserver_deploy_one    : deploy an Apache webserver (+ firewall, + ntp) on a VM
- rhtest_webserver_deploy        : deploy an Apache webserver (+ firewall, + ntp) on all VMs (rhtest group)
- rhtest_webserver_clean         : remove apache and firewall rule from a VM
- rhtest_webserver_delete        : delete a VM
- rhtest_webserver_info          : display hostname, guestid, and IP address of all VMs (rhtest group)
- rhtest_webserver_ping          : test ssh connection to all VMs (rhtest group)

Sample varilables:
- vcenter_vars : required vcenter credentials. On Ansible Tower, you should be using survey

Suggested Ansible Tower Workflow with Survey:
- Ping     : dynamic inventory sync --> ping
- Deploy   : dynamic inventory sync --> subscribe_one --> deploy_one
- Delete   : unsubscribe --> delete

