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

python3 create_tokenizer.py --train_file <path to train file>.txt

python3 run_mlm.py --model_type big_bird --model_name_or_path big_bird_tokenizer --tokenizer_name big_bird_tokenizer --train_file <path to train file>.txt --validation_file <path to validation file>.txt --per_device_train_batch_size 1 --max_seq_length 4096 --do_train --output_dir bigbird_trained_model

