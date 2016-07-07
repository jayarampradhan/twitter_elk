Twiteer Log Analysis using ELK
============

## What it does

* A Demo using Vagrant and Chef, to bring up the ELK stack.

## What you need to do

- Clone this project
- `logstash.conf.erb` update your twitter account details
- Check the `Vagrant` file for the port details, if needed change accordingly.
- run below command to bring up the enviornment

```bash
vagrant up
```

Please note, if you want to change the tags, do the same in the `logstash.conf.erb`

Once the machiene is up and running, please open browser and type
http://localhost:8083/ 
use the user name as kibana and password as kibana
Once you see the kibana index page, create a index like `twitter*` and play with the dashboard



## Devlopment Enviornment

- Vagrant
- Chef
- ELK
- nginx

-entities.user_mentions.id_str:"13796572"

