# TNPM Wireless Lif Reloader

##

### Introduction

TNPM Wireless alarms will only be triggered (view `alarm_cache.log`) when the current alarm violation type is different than the previous alarm violation type.

Therefore, this `Lif Reloader` toggles between critical and cleared values.

### Application

`reload_lifs.sh` should hold the command for TNPM Wireless Alarm Service to execute.