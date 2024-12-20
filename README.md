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
 ✔ Container fluentbit-logs-generator-1  Created                                                                                                                                                                                             0.0s 
 ✔ Container fluentbit-fluentbit-1       Created                                                                                                                                                                                             0.0s 
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
fluentbit-1       | [2024/12/20 11:00:47] [ info] [fluent bit] version=3.2.2, commit=a59c867924, pid=1
fluentbit-1       | [2024/12/20 11:00:47] [ info] [storage] ver=1.5.2, type=memory, sync=normal, checksum=off, max_chunks_up=128
fluentbit-1       | [2024/12/20 11:00:47] [ info] [simd    ] disabled
fluentbit-1       | [2024/12/20 11:00:47] [ info] [cmetrics] version=0.9.9
fluentbit-1       | [2024/12/20 11:00:47] [ info] [ctraces ] version=0.5.7
fluentbit-1       | [2024/12/20 11:00:47] [ info] [input:tail:tail.0] initializing
fluentbit-1       | [2024/12/20 11:00:47] [ info] [input:tail:tail.0] storage_strategy='memory' (memory only)
fluentbit-1       | [2024/12/20 11:00:47] [ info] [sp] stream processor started
fluentbit-1       | [2024/12/20 11:00:47] [ info] [input:tail:tail.0] inotify_fs_add(): inode=10 watch_fd=1 name=/var/log/dummy.log
fluentbit-1       | [2024/12/20 11:00:47] [ info] [output:stdout:stdout.0] worker #0 started
fluentbit-1       | [0] dummy: [[1734692448.314127922, {}], {"log"=>"{"message": "7cRb055mYWUnsRg4HBGgPTf23e3Dj0UUZzKRoV0BykGA7b3tliq9PCPAX12msfy0DU2tpl6HuwMSz8paORNgadu0Hx6IcKVORr", "number":98,  "timestamp": "1734692448"}", "log_record_bytes"=>157}]
fluentbit-1       | [1] dummy: [[1734692448.316987037, {}], {"log"=>"[1734692448] non json log : message=7cRb055mYWUnsRg4HBGgPTf23e3Dj0UUZzKRoV0BykGA7b3tliq9PCPAX12msfy0DU2tpl6HuwMSz8paORNgadu0Hx6IcKVORr size=98 ", "log_record_bytes"=>146}]
fluentbit-1       | [0] dummy: [[1734692449.328058004, {}], {"log"=>"{"message": "e8IhrLI5IpLwoa9Q3RMLDIlRmZPpz5x39W8RnFxB6thxKC64fjkFxjqIQlnxjlGQkc2h3bbHs1LuXll8abn8E5GJuua4AKmP4yFzsZFzJ0gqHE", "number":110,  "timestamp": "1734692449"}", "log_record_bytes"=>170}]
fluentbit-1       | [1] dummy: [[1734692449.330321550, {}], {"log"=>"[1734692449] non json log : message=e8IhrLI5IpLwoa9Q3RMLDIlRmZPpz5x39W8RnFxB6thxKC64fjkFxjqIQlnxjlGQkc2h3bbHs1LuXll8abn8E5GJuua4AKmP4yFzsZFzJ0gqHE size=110 ", "log_record_bytes"=>159}]
Gracefully stopping... (press Ctrl+C again to force)
[+] Stopping 2/1
 ✔ Container fluentbit-fluentbit-1       Stopped                                                                                                                                                                                             0.3s 
 ✔ Container fluentbit-logs-generator-1  Stopped                                                                                                                                                                                             0.0s
 ```
