FROM payara/server-full:5.2021.7 as default
COPY --chown=payara:payara helloworld.war /opt/payara/deployments/helloworld.war

FROM default as agent
USER root
RUN apt-get update \
    && apt-get install -y wget \
    && rm -rf /var/lib/apt/lists/*
USER payara
RUN wget "https://dtdg.co/latest-java-tracer" -O /opt/payara/dd-java-agent.jar
ENV JAVA_TOOL_OPTIONS="-javaagent:/opt/payara/dd-java-agent.jar -Ddd.logs.injection=true -Ddd.appsec.enabled=true -Ddd.env=PRODUCTION"
