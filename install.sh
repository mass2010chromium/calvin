#!/bin/bash

# Wheel is never depended on, but always needed. MulticoreTSNE requires lower CMake version
uv pip install wheel cmake==3.18.4.post1

cd calvin_env/tacto
uv pip install -e .
cd ..
uv pip install -e .
cd ../calvin_models
uv pip install -e .
