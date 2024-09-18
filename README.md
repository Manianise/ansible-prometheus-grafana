### All in one compilation to install Grafana, Prometheus, cAdvisor and Node Exporter on a Linux based machine

![ubuntu](https://img.shields.io/badge/ubuntu-v22.04.4-E95420?logo=ubuntu)
![grafana](https://img.shields.io/badge/grafana-latest-F46800?logo=grafana)
![prometheus](https://img.shields.io/badge/prometheus-latest-E6522C?logo=prometheus)

 Works on Debian/Ubuntu, untested elsewhere
|-----------------------------------------|
***
#### Requirements

- Ansible installed on local machine
- Grafana Account with credentials in [group_vars/main.yml](group_vars/main.yml)

#### Linux

- Replace [main.yml](group_vars/main.yml) with your secret variables e.g Grafana credentials as <code>grafana_user</code> and <code>grafana_password </code>
- It is recommended to encrypt your [main.yml](group_vars/main.yml), and if you do, just run the install script :
```
install.sh
```

- Otherwise, just run the following commands :
```
ansible-galaxy install -r requirements.yml &&
ansible-playbook -i inventory.ini playbook.yml
```

#### Windows

- You will first need to [configure WSL environment](https://learn.microsoft.com/fr-fr/windows/wsl/setup/environment)
- Once done, enter your distribution and follow the instructions (Linux) :

```
wsl --distribution <YOUR_LINUX_DISTRO> -u root
```


