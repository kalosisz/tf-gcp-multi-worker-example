FROM tensorflow/tensorflow:2.3.1

WORKDIR /training
COPY multi-worker/trainer/ trainer/

ENTRYPOINT ["python","-m", "trainer.task"]
