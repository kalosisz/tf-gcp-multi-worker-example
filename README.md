# tf-gcp-multi-worker-example
A simple example of setting up multi-worker training Tensorflow model on Google Cloud. 

This repository is complementary to the Medium article: 

### Submitting training

In order to submit the training, run the following command
```bash
gcloud ai-platform jobs submit training $JOB_NAME --package-path multi-worker/trainer --region $REGION  --module-name trainer.task --job-dir $JOB_DIR --config config.yaml -- --layer-size $LAYER_SIZES --learning-rate $LEARNING_RATE --epochs $EPOCHS --data-base-path $DATA_BASE_PATH --training-examples $TRANING_EXAMPLES --validation-examples $VALIDATION_EXAMPLES
```
where the environment variables already exist.