# docker-ansible

Image to make the Ansible tools available in a container.

#### *Warning*: this is not a standalone image !

I wanted to be able to run several version of Ansible without having to maintain too many images. Therefore, when you run this image, you need to mount the [ansible code](https://github.com/ansible/ansible) as a volume. See the [usage section](#usage) for examples.


## usage

```bash
# get the ansible code on the branch you want to use
git clone git://github.com/ansible/ansible.git --depth 1 --branch <VERSION> --recursive

ansible_path="${HOME}/tools/ansible"

# ansible
docker run \
  --name ansible \
  --rm \
  --volume ${ansible_path}:/ansible \
  pamplemousse/ansible \
  ansible

# ansible-playbook
# run from your project folder to mount it as a volume
docker run \
  --name ansible-playbook \
  -it --rm \
  --volume ${ansible_path}:/ansible \
  --volume $(pwd):/home/ansible/project \
  -w /home/ansible/project \
  pamplemousse/ansible \
  ansible-playbook

# ansible-galaxy
# run from your project folder to mount it as a volume
docker run \
  --name ansible-galaxy \
  --rm \
  --volume ${ansible_path}:/ansible \
  --volume $(pwd):/home/ansible/project
  -w /home/ansible/project \
  pamplemousse/ansible \
  ansible-galaxy
```
