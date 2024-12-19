# Fluentbit Log Record Size

A service generates logs to a file and fluentbit adds `log_record_bytes` with the log record size as a log record field.

## Try it out

```
docker compose up
```

## Example

```bash
> docker compose up
[+] Running 2/0
 ✔ Container fluentbit-logs-generator-1  Created                                                                                                              0.0s 
 ✔ Container fluentbit-fluentbit-1       Created                                                                                                              0.0s 
Attaching to fluentbit-1, logs-generator-1
fluentbit-1       | Fluent Bit v3.2.2
fluentbit-1       | * Copyright (C) 2015-2024 The Fluent Bit Authors
fluentbit-1       | * Fluent Bit is a CNCF sub-project under the umbrella of Fluentd
fluentbit-1       | * https://fluentbit.io
fluentbit-1       | 
fluentbit-1       | ______ _                  _    ______ _ _           _____  _____ 
fluentbit-1       | |  ___| |                | |   | ___ (_) |         |____ |/ __  \
fluentbit-1       | | |_  | |_   _  ___ _ __ | |_  | |_/ /_| |_  __   __   / /`' / /'
fluentbit-1       | |  _| | | | | |/ _ \ '_ \| __| | ___ \ | __| \ \ / /   \ \  / /  
fluentbit-1       | | |   | | |_| |  __/ | | | |_  | |_/ / | |_   \ V /.___/ /./ /___
fluentbit-1       | \_|   |_|\__,_|\___|_| |_|\__| \____/|_|\__|   \_/ \____(_)_____/
fluentbit-1       | 
fluentbit-1       | 
fluentbit-1       | [2024/12/19 23:33:30] [ info] [fluent bit] version=3.2.2, commit=a59c867924, pid=1
fluentbit-1       | [2024/12/19 23:33:30] [ info] [storage] ver=1.5.2, type=memory, sync=normal, checksum=off, max_chunks_up=128
fluentbit-1       | [2024/12/19 23:33:30] [ info] [simd    ] disabled
fluentbit-1       | [2024/12/19 23:33:30] [ info] [cmetrics] version=0.9.9
fluentbit-1       | [2024/12/19 23:33:30] [ info] [ctraces ] version=0.5.7
fluentbit-1       | [2024/12/19 23:33:30] [ info] [input:tail:tail.0] initializing
fluentbit-1       | [2024/12/19 23:33:30] [ info] [input:tail:tail.0] storage_strategy='memory' (memory only)
fluentbit-1       | [2024/12/19 23:33:30] [error] [input:tail:tail.0] parser 'json' is not registered
fluentbit-1       | [2024/12/19 23:33:30] [ info] [sp] stream processor started
fluentbit-1       | [2024/12/19 23:33:30] [ info] [input:tail:tail.0] inotify_fs_add(): inode=10 watch_fd=1 name=/var/log/dummy.log
fluentbit-1       | [2024/12/19 23:33:30] [ info] [output:stdout:stdout.0] worker #0 started
fluentbit-1       | [0] dummy: [[1734651211.412852287, {}], {"log"=>"{"message": "3n0X4jXX8GCQFs7TEHzsHH4yTRAlnLO4Z", "number":33,  "timestamp": "1734651211"}", "log_record_bytes"=>92}]
fluentbit-1       | [0] dummy: [[1734651212.421237945, {}], {"log"=>"{"message": "VMNbvkkZHfKW7qgtGDSzJPfybgtREQao0fvCHIKTAaHjlsz", "number":47,  "timestamp": "1734651212"}", "log_record_bytes"=>106}]
fluentbit-1       | [0] dummy: [[1734651213.435012340, {}], {"log"=>"{"message": "t2vHbIt84mbBRTpQK9hdOXe9G8vq5Rj69cuDxBMHhCq8wRE4xT", "number":50,  "timestamp": "1734651213"}", "log_record_bytes"=>109}]
fluentbit-1       | [0] dummy: [[1734651214.447463035, {}], {"log"=>"{"message": "TsXmPpVy4pMGPVwXyB3lyWahWrn9", "number":28,  "timestamp": "1734651214"}", "log_record_bytes"=>87}]
Gracefully stopping... (press Ctrl+C again to force)
[+] Stopping 2/1
 ✔ Container fluentbit-fluentbit-1       Stopped                                                                                                              0.3s 
 ✔ Container fluentbit-logs-generator-1  Stopped        
 ```
