#!/usr/bin/env bash
set -e

if ! command -v pdm &>/dev/null; then
    if ! command -v pipx &>/dev/null; then
        python -m pip install --user pipx
    fi
    pipx install pdm
fi
pdm venv create 3.10
pdm install -G:all
