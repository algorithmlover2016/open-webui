
docker run -d -p 3000:8080 --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main

docker run -d -p 3000:8080 -e OLLAMA_BASE_URL=https://example.com -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main

docker run -d --network=host  -e OLLAMA_BASE_URL=http://127.0.0.1:11434 -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main


docker stop merging_video_gpu; docker rm merging_video_gpu ;  docker  run -it --gpus '"device=3",capabilities=video' --network=host --name merging_video_gpu      -v /disks/ssd2/:/data open_webui_ollama:v1.0 /bin/bash

OLLAMA_NUM_PARALLEL=2;OLLAMA_MAX_LOADED_MODELS=4;
curl -fsSL https://ollama.com/install.sh | sh


curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
source ~/.bashrc
nvm install 21
node -v
npm -v

https://docs.openwebui.com/getting-started/

git clone https://github.com/algorithmlover2016/open-webui.git

mkdir tools
cd tools/
wget https://repo.anaconda.com/archive/Anaconda3-2024.06-1-Linux-x86_64.sh
chmod +x Anaconda3-2024.06-1-Linux-x86_64.sh
export SHELL=/bin/bash
/bin/bash Anaconda3-2024.06-1-Linux-x86_64.sh
source ~/.bashrc
conda create --name openwebui python=3.11 -y
conda activate openwebui
cd ../open-webui/
npm install
npm run build

cd backend/
vim .env
vim data/litellm/config.yaml

python3 -m pip install -r requirements.txt
/bin/bash start.sh
