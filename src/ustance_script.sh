SemEval-16
adv
echo "train"
python train_and_eval_model.py --mode "train" --config_file config/config_example_toad.txt --trn_data data/twitter_data_naacl/twitter_testDT_seenval/train.csv --dev_data data/twitter_data_naacl/twitter_testDT_seenval/validation.csv --score_key f_macro --topics_vocab twitter-topic-TRN-semi-sup.vocab.pkl

echo "eval"
python train_and_eval_model.py --mode "eval" --config_file config/config_example_toad.txt --trn_data data/twitter_data_naacl/twitter_testDT_seenval/train.csv --dev_data data/twitter_data_naacl/twitter_testHC_seenval/validation.csv --saved_model_file_name data/checkpoints/ckp-BasicAdv-twitter-example-bicond-BEST.tar --topics_vocab twitter-topic-TRN-semi-sup.vocab.pkl


bicond
echo "train"
python train_and_eval_model.py --mode "train" --config_file config/config_example_bicond.txt --trn_data data/twitter_data_naacl/twitter_testDT_seenval/train.csv --dev_data data/twitter_data_naacl/twitter_testDT_seenval/validation.csv --score_key f_macro --topics_vocab twitter-topic-TRN-semi-sup.vocab.pkl

echo "eval"
python train_and_eval_model.py --mode "eval" --config_file config/config_example_bicond.txt --trn_data data/twitter_data_naacl/twitter_testDT_seenval/train.csv --dev_data data/twitter_data_naacl/twitter_testHC_seenval/validation.csv --saved_model_file_name data/checkpoints/ckp-BiCondLSTM-basic-twitter-example-BEST.tar --topics_vocab twitter-topic-TRN-semi-sup.vocab.pkl


UStanceBR
adv
echo "train"
# python train_and_eval_model.py --mode "train" --config_file config/toad_ustancebr_bo.txt --trn_data data/UStanceBR/r2_bo_train_statements.csv --dev_data data/UStanceBR/r2_bo_valid_statements.csv --score_key f_macro --topics_vocab ustancebr_topic.vocab.pkl
python train_and_eval_model.py --mode "train" --config_file config/toad_ustancebr_bo.txt --trn_data data/UStanceBR/final_bo_train.csv --dev_data data/UStanceBR/final_bo_valid.csv --score_key f_macro --topics_vocab ustancebr_topic.vocab.pkl

echo "eval"
# python train_and_eval_model.py --mode "eval" --config_file config/toad_ustancebr_bo.txt --trn_data data/UStanceBR/r2_bo_train_statements.csv --dev_data data/UStanceBR/r2_lu_valid_statements.csv --saved_model_file_name data/checkpoints/ckp-BiCondLSTM_ustancebr_bo-BEST.tar --topics_vocab ustancebr_topic.vocab.pkl
python train_and_eval_model.py --mode "eval" --config_file config/toad_ustancebr_bo.txt --trn_data data/UStanceBR/final_bo_train.csv --dev_data data/UStanceBR/final_bo_valid.csv --saved_model_file_name data/checkpoints/ustancebr/ckp-BiCondLSTM_ustancebr_bo-BEST.tar --topics_vocab ustancebr_topic.vocab.pkl

bicond
echo "train"
# python train_and_eval_model.py --mode "train" --config_file config/bicond_ustancebr_bo.txt --trn_data data/UStanceBR/r2_bo_train_statements.csv --dev_data data/UStanceBR/r2_bo_valid_statements.csv --score_key f_macro --topics_vocab ustancebr_topic.vocab.pkl
python train_and_eval_model.py --mode "train" --config_file config/bicond_ustancebr_bo.txt --trn_data data/UStanceBR/final_bo_train.csv --dev_data data/UStanceBR/final_bo_valid.csv --score_key f_macro --topics_vocab ustancebr_topic.vocab.pkl

echo "eval"
# python train_and_eval_model.py --mode "eval" --config_file config/bicond_ustancebr_bo.txt --trn_data data/UStanceBR/r2_bo_train_statements.csv --dev_data data/UStanceBR/r2_lu_valid_statements.csv --saved_model_file_name data/checkpoints/ustancebr/ckp-BasicAdv_ustancebr_bo-bicond-BEST.tar --topics_vocab ustancebr_topic.vocab.pkl
python train_and_eval_model.py --mode "eval" --config_file config/bicond_ustancebr_bo.txt --trn_data data/UStanceBR/final_bo_train.csv --dev_data data/UStanceBR/final_bo_valid.csv --saved_model_file_name data/checkpoints/ustancebr/ckp-BasicAdv_ustancebr_bo-bicond-BEST.tar --topics_vocab ustancebr_topic.vocab.pkl
