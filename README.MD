# Testing DataDog agent in Payara

The application can be run with:

```shell
# No agent
./run.sh
```

```shell
# Run with DataDog agent
./run.sh agent
```

To validate that the agent started successfully:

```shell
docker logs application_agent 2>&1 | grep "DATADOG TRACER CONFIGURATION"
```
