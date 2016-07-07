mkdir -p /tmp/chef/conf/
mkdir -p /tmp/chef/vendor/cookbooks

cd /dev/workspace/chef/twiteer
berks vendor /tmp/chef/vendor/cookbooks


cat <<EOF > /tmp/chef/conf/client.rb
cookbook_path ["/tmp/chef/vendor/cookbooks"]
role_path '/tmp/chef/vendor/cookbooks/twiteer/roles'
environment_path '/tmp/chef/vendor/cookbooks/twiteer/environments'
environment 'dev'
local_mode 'true'
node_path '/tmp/chef/vendor/cookbooks/twiteer/nodes'
node_name 'dev-node'
log_level :info
log_location STDOUT
EOF

cat <<EOF > /tmp/instance_meta.json
{"pod" : "1", "account":"dev", "env" : "dev", "endpoint" : "dev"}
EOF

chef-client -z -c /tmp/chef/conf/client.rb -j /tmp/instance_meta.json