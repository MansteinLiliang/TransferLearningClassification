n=0

CUDA_VISIBLE_DEVICES=$n python run_exp.py --lrn_rate 0.01 --weight_decay_mode 0 --weight_decay_rate 0.0001 --weight_decay_rate2 0.001 --momentum 0.9 --batch_size 64 --train_max_iter 9000 --snapshot 9000 --fine_tune_filename '../z_pretrained_weights/resnet_v1_101.ckpt' --optimizer 'mom' --color_switch 0 --step_size 0.1 --lr_step 5000 --resnet 'resnet_v1_101' --database 'dogs120' --test_batch_size 100 --log_dir 0

CUDA_VISIBLE_DEVICES=$n python run_exp.py --lrn_rate 0.01 --weight_decay_mode 1 --weight_decay_rate 0.1 --weight_decay_rate2 0.01 --momentum 0.9 --batch_size 64 --train_max_iter 9000 --snapshot 9000 --fine_tune_filename '../z_pretrained_weights/resnet_v1_101.ckpt' --optimizer 'mom' --color_switch 0 --step_size 0.1 --lr_step 5000 --resnet 'resnet_v1_101' --database 'dogs120' --test_batch_size 100 --log_dir 0

# CUDA_VISIBLE_DEVICES=$n python run_exp.py --lrn_rate 0.005 --weight_decay_mode 1 --weight_decay_rate 0.1 --weight_decay_rate2 0.01 --momentum 0.9 --batch_size 64 --train_max_iter 9000 --snapshot 9000 --server $s --fine_tune_filename '../z_pretrained_weights/resnet_v1_101.ckpt' --optimizer 'mom' --color_switch 0 --step_size 0.1 --lr_step 5000 --resnet 'resnet_v1_101' --database 'dogs120' --test_batch_size 100 --log_dir 0
