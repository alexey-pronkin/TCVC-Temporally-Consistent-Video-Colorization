cp -r pretrained_models/* TCVC-Temporally-Consistent-Video-Colorization/experiments/pretrained_models/
cp -r TCVC_IDC/* TCVC-Temporally-Consistent-Video-Colorization/experiments/
sudo docker build . -t docker-tcvc:latest
sudo docker run --gpus all --interactive --tty -v ${pwd}/test:/home/user/test docker-tcvc:latest
conda run -n tcvc python test_TCVC_onesampling.py 