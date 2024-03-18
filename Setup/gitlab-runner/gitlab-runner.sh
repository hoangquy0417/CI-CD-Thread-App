## ubuntu-dev
sudo -i
apt-get update

curl -L "https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh" | bash

apt-get install gitlab-runner
apt-cache madison gitlab-runner (optional)
gitlab-runner -version

# => sau khi tao xong se co user gitlab-runner va thu muc lam viec home/gitlab-runner
# (check cat /etc/passwd)