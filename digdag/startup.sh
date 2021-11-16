#!/bin/sh

echo startup shell started!

# 以下digdag.propertiesは絶対PATHで指定しないと失敗する。
. ~/.bashrc
digdag server --config /digdag/etc/digdag.properties --bind 0.0.0.0 --port 65432 --task-log /var/log/digdag/ --access-log /var/log/digdag
