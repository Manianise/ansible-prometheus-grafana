### All in one compilation to install Grafana, Prometheus, Alertmanager, cAdvisor and Node Exporter on a Linux based machine

![ubuntu](https://img.shields.io/badge/ubuntu-v22.04.4-E95420?logo=ubuntu)
![grafana](https://img.shields.io/badge/grafana-latest-F46800?logo=grafana)
![prometheus](https://img.shields.io/badge/prometheus-latest-E6522C?logo=prometheus)

 Works on Debian/Ubuntu, untested elsewhere
|-----------------------------------------|
***
#### Requirements

- Ansible installed on local machine
- Grafana Account with credentials in [group_vars/all/vault.yml](group_vars/all/vault.yml)

#### Linux

- Replace [vault.yml](group_vars/all/vault.yml) with your secret variables e.g Grafana credentials as <code>grafana_user</code> and <code>grafana_password </code>
- It is recommended to encrypt your [vault.yml](group_vars/all/vault.yml)
- If you do not encrypt your vault.yml, add a semi-colon next to ask vault pass in [ansible.cfg](ansible.cfg)

- Run the following commands :
```
ansible-playbook -i inventory.ini playbook.yml
```

#### Windows

- You will first need to [configure WSL environment](https://learn.microsoft.com/fr-fr/windows/wsl/setup/environment)
- Once done, enter your distribution and follow the instructions (Linux) :

```
wsl --distribution <YOUR_LINUX_DISTRO> -u root
```


