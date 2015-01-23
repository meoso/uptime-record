uptime-record
=============

Linux BASH script to save uptime record (maximum uptime thus far).

suggested install:
```
cd ~
mkdir scripts
cd scripts
git clone https://github.com/meoso/uptime-record.git
chmod +x ./uptime-record/*.sh
```

basic usage: test uptime against record and if new record, save it as `~/.uprecord`:
```
~/scripts/uptime-record/uprecord.sh
```

basic usage: show uptime record:
```
~/scripts/uptime-record/show-uprecord.sh
```
    
suggested usage: run in crontab:
```
* * * * * ~/scripts/uptime-record/uprecord.sh
```

suggested usage: show in conky:
```
Uptime: $uptime
Uptime Record: ${execi 30 ~/scripts/uptime-record/show-uprecord.sh}
```

