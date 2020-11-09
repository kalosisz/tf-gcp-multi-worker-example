FROM tensorflow/tensorflow:nightly

WORKDIR /training
COPY multi-worker/trainer/ trainer/

ENTRYPOINT ["python","-m", "trainer.task"]
