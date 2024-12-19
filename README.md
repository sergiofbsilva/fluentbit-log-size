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
fluentbit-1       | [2024/12/19 23:05:42] [ info] [fluent bit] version=3.2.2, commit=a59c867924, pid=1
fluentbit-1       | [2024/12/19 23:05:42] [ info] [storage] ver=1.5.2, type=memory, sync=normal, checksum=off, max_chunks_up=128
fluentbit-1       | [2024/12/19 23:05:42] [ info] [simd    ] disabled
fluentbit-1       | [2024/12/19 23:05:42] [ info] [cmetrics] version=0.9.9
fluentbit-1       | [2024/12/19 23:05:42] [ info] [ctraces ] version=0.5.7
fluentbit-1       | [2024/12/19 23:05:42] [ info] [input:tail:tail.0] initializing
fluentbit-1       | [2024/12/19 23:05:42] [ info] [input:tail:tail.0] storage_strategy='memory' (memory only)
fluentbit-1       | [2024/12/19 23:05:42] [error] [input:tail:tail.0] parser 'json' is not registered
fluentbit-1       | [2024/12/19 23:05:42] [ info] [sp] stream processor started
fluentbit-1       | [2024/12/19 23:05:42] [ info] [input:tail:tail.0] inotify_fs_add(): inode=9 watch_fd=1 name=/var/log/dummy.log
fluentbit-1       | [2024/12/19 23:05:42] [ info] [output:stdout:stdout.0] worker #0 started
fluentbit-1       | [0] dummy: [[1734649543.281593322, {}], {"log"=>"{"message": "wBwpdktT5fzlioRg2iW1FfiR3AtrBDXFgNOUGzymsk69QJDFdRBSFi22stuSNavcn49TlrX", "number":71,  "timestamp": "'1734649543'"}", "log_record_bytes"=>132}]
fluentbit-1       | [0] dummy: [[1734649544.300452232, {}], {"log"=>"{"message": "3UvWurD8pF5HJwJJjIb7cetQVws394c4GZ3WYbrz8I7zeKABc3zPQaPadDA6KVruoIQEufxxNYAXfRJHBDykhjslQw5hmrPU0odLFNZgB", "number":105,  "timestamp": "'1734649544'"}", "log_record_bytes"=>167}]
fluentbit-1       | [0] dummy: [[1734649545.314903259, {}], {"log"=>"{"message": "eQZXtaUyyxTs1zXuBsgXLggb1xzgaBJuqK7OOvyLuvVRESaXCFflXzg7KqZ40MXN2IwL0ZdumbPEvRBTtV7KNHgYdk4NFbuTBWbojE", "number":102,  "timestamp": "'1734649545'"}", "log_record_bytes"=>164}]
fluentbit-1       | [0] dummy: [[1734649546.342638731, {}], {"log"=>"{"message": "wxH8dp2tb3vXi6nwUqU31h3OrpHnBRYjCOqGovxeV4Vq6IKKsDqoBQObilcWULNFR8qox9P2ttqSsEe6fuonxmw7uOeGaaYXK", "number":97,  "timestamp": "'1734649546'"}", "log_record_bytes"=>158}]
fluentbit-1       | [0] dummy: [[1734649547.360540390, {}], {"log"=>"{"message": "xtSHv09AdprBJ2i8jHsqF6OXPRhCOuThqY0YalvRrOYGvgXDYdybH6CPRPDhep7U796rdJI6MowS7BMFJWI9LVaoabG5r4hCBOrK9ls8cOwPedYdKSZN2G", "number":118,  "timestamp": "'1734649547'"}", "log_record_bytes"=>180}]
fluentbit-1       | [0] dummy: [[1734649548.373274087, {}], {"log"=>"{"message": "E3pFPUR9thCRD8YPzXfg4ssl59YqFZdwzXbwRwDtHq1iyInUNVye5Q6hTeonUdLEY4HmyOVw5zwnPPBAQFCmUNjd", "number":88,  "timestamp": "'1734649548'"}", "log_record_bytes"=>149}]
fluentbit-1       | [0] dummy: [[1734649549.388579845, {}], {"log"=>"{"message": "TZmz8zjhwvDHeed9UX0bIAwi4YnEZ8noviNEhoRiOYetm2FqDt9KQuVlh7OgQyz55YtPhHDJSIO", "number":75,  "timestamp": "'1734649549'"}", "log_record_bytes"=>136}]
fluentbit-1       | [0] dummy: [[1734649550.404081583, {}], {"log"=>"{"message": "QTZy7yIAgD1wyQSAP23VFu59Bmy4fsIS8Dmk5PrBEVFUEGih9ERluXVRCyuSUG13HMNqriC", "number":71,  "timestamp": "'1734649550'"}", "log_record_bytes"=>132}]
fluentbit-1       | [0] dummy: [[1734649551.418280839, {}], {"log"=>"{"message": "Y7pXNigxHIJVZagCNvew5uDaq8PDKi3uE5Uml27NXyychk5dKawEJlpcUx6eR7XoG2oGkMbHPFxpvgeydfpvcZEaS6FxlwtK36iE0vUM5FFy", "number":108,  "timestamp": "'1734649551'"}", "log_record_bytes"=>170}]
Gracefully stopping... (press Ctrl+C again to force)
[+] Stopping 2/2
 ✔ Container fluentbit-fluentbit-1       Stopped                                                                                                              0.8s 
 ✔ Container fluentbit-logs-generator-1  Stopped                                                                                                             10.1s 
 ```
