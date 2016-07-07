default['nginx']['port']         = '80'
default['nginx']['dir']          = '/etc/nginx'
default['nginx']['script_dir']   = '/usr/sbin'
default['nginx']['log_dir']      = '/var/log/nginx'
default['nginx']['log_dir_perm'] = '0750'
default['nginx']['binary']       = '/usr/sbin/nginx'
default['nginx']['ulimit']       = '1024'
default['nginx']['daemon_mode']  = 'on'
default['nginx']['worker_rlimit_nofile'] = 65535
default['nginx']['worker_connections']   = 66536
default['nginx']['pid']                  = '/var/run/nginx.pid'
default['nginx']['multi_accept']         = true
default['nginx']['event']                = 'epoll'
default['nginx']['log_formats']          = {}
default['nginx']['disable_access_log']   = false
default['nginx']['access_log_options']   = nil
default['nginx']['error_log_options']    = nil
default['nginx']['accept_mutex_delay']   = nil
default['nginx']['server_tokens']        = nil
default['nginx']['worker_processes']     = node['cpu'] && node['cpu']['total'] ? node['cpu']['total'] : 1
default['nginx']['user']                 = 'nginx'
default['nginx']['group']                = 'nginx'
default['nginx']['sendfile']             = 'on'
default['nginx']['tcp_nodelay']          = 'on'
default['nginx']['tcp_nopush']           = 'on'
default['nginx']['keepalive']            = 'on'
default['nginx']['keepalive_requests']   = 100000
default['nginx']['keepalive_timeout']    = 65
default['nginx']['underscores_in_headers'] = nil

default['nginx']['gzip']              = 'on'
default['nginx']['gzip_static']       = 'off'
default['nginx']['gzip_http_version'] = '1.0'
default['nginx']['gzip_comp_level']   = '2'
default['nginx']['gzip_proxied']      = 'any'
default['nginx']['gzip_vary']         = 'off'
default['nginx']['gzip_buffers']      = nil
default['nginx']['gzip_types'] = %w(
  text/plain
  text/css
  application/x-javascript
  text/xml
  application/xml
  application/rss+xml
  application/atom+xml
  text/javascript
  application/javascript
  application/json
  text/mathml
)
default['nginx']['gzip_min_length']   = 1000
default['nginx']['gzip_disable']      = 'MSIE [1-6]\.'

default['nginx']['server_names_hash_bucket_size'] = 64
default['nginx']['variables_hash_max_size']       = 1024
default['nginx']['variables_hash_bucket_size']    = 64
default['nginx']['types_hash_max_size']           = 2_048
default['nginx']['types_hash_bucket_size']        = 64

default['nginx']['proxy_read_timeout']          = nil
default['nginx']['client_body_buffer_size']     = nil
default['nginx']['client_max_body_size']        = nil
default['nginx']['large_client_header_buffers'] = nil

default['nginx']['enable_rate_limiting']    = false
default['nginx']['rate_limiting_zone_name'] = 'default'
default['nginx']['rate_limiting_backoff']   = '10m'
default['nginx']['rate_limit']              = '1r/s'
default['nginx']['extra_configs'] = {}