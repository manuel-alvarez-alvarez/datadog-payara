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

You can test that the agent started successfully via:

```shell
docker logs application_agent 2>&1 | grep "DATADOG TRACER CONFIGURATION"
```
