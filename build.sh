#!/usr/bin/env bash
set -e
dotnet restore
for c in Debug Release; do
    dotnet build --no-restore -c $c
done
