vim examples/text_to_image_sd2.py

python3 examples/text_to_image_sd2.py
python3 examples/text_to_image_sd21.py

scp root@152.136.186.81:/usr/local/code/onediff/cat_2048.png ./
scp root@152.136.186.81:/usr/local/code/onediff/cat.png ./

scp root@152.136.186.81:/usr/local/code/onediff/cat_2_2048.png ./
scp root@152.136.186.81:/usr/local/code/onediff/cat_2_1_2048.png ./
scp root@152.136.186.81:/usr/local/code/onediff/cat_2_1_768.png ./


033227
033458
02:31 2分31秒

cd /usr/local/code
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui
cd stable-diffusion-webui

/usr/local/code/stable-diffusion-webui/venv/bin/python3 -Im ensurepip --upgrade --default-pip

cd stable-diffusion-webui/models/Stable-diffusion
wget -O chilloutmix_NiPrunedFp32.safetensors https://civitai.com/api/download/models/9475
# 作者：jasoai https://www.bilibili.com/read/cv21955055 出处：bilibili


pip3 install git+https://github.com/openai/CLIP.git@d50d76daa670286dd6cacf3bcd80b5e4823fc8e1 --prefer-binary
pip3 install git+https://github.com/mlfoundations/open_clip.git@bb6e834e9c70d9c27d0dc3ecedeebeaeb1ffad6b --prefer-binary
git clone https://github.com/CompVis/taming-transformers.git repositories/taming-transformers
git clone https://github.com/crowsonkb/k-diffusion.git repositories/K-diffusion
git clone https://github.com/sczhou/CodeFormer.git repositories/CodeFormer
git clone https://github.com/salesforce/BLIP.git repositories/BLIP
git clone https://github.com/Stability-AI/stablediffusion.git




