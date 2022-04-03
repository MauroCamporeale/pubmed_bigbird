#!/usr/bin/env bash

# Copyright (c) 2019 NVIDIA CORPORATION. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

export BERT_PREP_WORKING_DIR="${BERT_PREP_WORKING_DIR}"

# Properly format the text files
python3 bertPrep.py --action text_formatting --dataset pubmed_baseline


# Shard the text files
python3 bertPrep.py --action sharding --dataset pubmed_baseline

# additional formatting
python3 bertPrep.py --action merging --dataset pubmed_baseline
