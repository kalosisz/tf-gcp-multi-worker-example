# Multi-worker Tensorflow training on Google Cloud AI Platform
A simple example of setting up and running multi-worker training Tensorflow model on Google Cloud. 

This repository is complementary to the Medium article: 

### Submitting training

#### AI Platform Tensorflow runtime
For submitting an official runtime training job, run
```bash
gcloud ai-platform jobs submit training $JOB_NAME --region $REGION \
    --package-path multi-worker/trainer --module-name trainer.task \
    --config config.yaml --job-dir $JOB_DIR -- --layer-size $LAYER_SIZES \
    --learning-rate $LEARNING_RATE --epochs $EPOCHS \
    --data-base-path $DATA_BASE_PATH --training-examples $TRANING_EXAMPLES \
    --validation-examples $VALIDATION_EXAMPLES --evaluation-examples $EVALUATION_EXAMPLES
```
where the environment variables already exist.

For running the job locally, locate and save the service account key JSON file path in `GOOGLE_APPLICATION_CREDENTIALS`, and run
```bash
gcloud ai-platform local train --distributed --worker-count $N \
    --package-path multi-worker/trainer --module-name trainer.task \
    --job-dir $JOB_DIR -- --layer-size $LAYER_SIZES \
    --learning-rate $LEARNING_RATE --epochs $EPOCHS \
    --data-base-path $DATA_BASE_PATH --training-examples $TRANING_EXAMPLES \
    --validation-examples $VALIDATION_EXAMPLES --evaluation-examples $EVALUATION_EXAMPLES
```
