#!/usr/bin/env tarantool

box.cfg({
    instance_uuid       = arg[1],
    listen              = os.getenv("LISTEN"),
    replication         = os.getenv("MASTER"),
    memtx_memory        = 107374182,
    replication_connect_timeout = 0.5,
})

require('console').listen(os.getenv('ADMIN'))

