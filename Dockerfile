FROM jamesadevine/codal-toolchains

ARG AUTH_TOKEN=local
ENV AUTH_TOKEN ${AUTH_TOKEN}
ENV GIT_COMMIT="HEAD"
ENV GIT_URL="https://github.com/lancaster-university/codal.git"

RUN echo -e "machine github.com\n  login $AUTH_TOKEN" >> ~/.netrc &&\
 git clone ${GIT_URL} &&\
 cd codal &&\
 git checkout ${GIT_COMMIT}

WORKDIR codal/

CMD python build.py -t
