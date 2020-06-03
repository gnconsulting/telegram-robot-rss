FROM python:2.7-alpine
CMD python .docker/initconfig.py && python robotrss.py

# Environment Variables for future use
ENV BOT_TOKEN telegram_bot_token
ENV UPDATE_INTERVAL 60

WORKDIR /workspace
COPY . /workspace

RUN pip install -r requirements.txt && chgrp -R root /workspace && chmod -R g+rwx /workspace \
