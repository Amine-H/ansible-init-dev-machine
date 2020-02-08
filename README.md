# i3-dev-env

## Usage

Add these two lines in `vars/vars.yml`, with your credentials

```
ansible_user: user
ansible_sudo_pass: hada_mot_de_passe
```

Execute the playbook

```
ansible-playbook playbook.yml -i inventory
```
