T5X_CHECKPOINT_PATH="gs://north-t5x/pretrained_models/large/norwegian_NCC_plus_English_t5x_large/checkpoint_1500000"
FLAX_DUMP_FOLDER_PATH="/home/perk/conv/north-t5-large/"
CONFIG_NAME="large.json"

python convert_t5x_checkpoint_to_flax.py --t5x_checkpoint_path ${T5X_CHECKPOINT_PATH} --config_name ${CONFIG_NAME} --flax_dump_folder_path ${FLAX_DUMP_FOLDER_PATH}
python create_pytorch_and_vocab.py --flax_dump_folder_path ${FLAX_DUMP_FOLDER_PATH}

