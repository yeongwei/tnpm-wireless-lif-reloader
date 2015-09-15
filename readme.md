# TNPM Wireless Lif Reloader

##

### Introduction

TNPM Wireless alarms will only be triggered (view `alarm_cache.log`) when the current alarm violation type is different than the previous alarm violation type.

Therefore, this `Lif Reloader` toggles between critical and cleared values.

### Known Issue

1. It occurs that if the Alarm Timestamp is the same, the propagation may not reach the Alarm Target.
