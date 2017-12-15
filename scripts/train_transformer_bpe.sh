python -m sockeye.train -s data_bpe/bpe.cleaned_tc_tok_train_2.et -t data_bpe/bpe.cleaned_tc_tok_train_2.en -vs data_bpe/bpe.cleaned_tc_tok_dev_2.et  -vt data_bpe/bpe.cleaned_tc_tok_dev_2.en --encoder transformer  --decoder transformer --optimized-metric bleu --monitor-bleu 750 --device-ids -1  --num-embed 512  --num-layers 6 --layer-normalization  --transformer-model-size 512 --transformer-feed-forward-num-hidden 2048 --transformer-dropout-prepost 0.1 --weight-tying-type src_trg_softmax --weight-tying --clip-gradient -1 --initial-learning-rate 0.0003 --learning-rate-warmup 50000 --num-words 70000 -o model_bpe_2
