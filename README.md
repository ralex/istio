# Description

This project is used for testing and experimenting with Istio.

You need to install prerequisites such as Ansible and minikube.

A Makefile is providing :
* `make setup` to install istioctl utility, start minikube, prepare a *demo* namespace and install Istio in your minikube "cluster"
* `make ìnstall` to deploy an example application
* `make cleanup` delete previous deployment resources and delete *demo* namespace


# Overview

## Components

### base

```enabled: true```

### citadel

```enabled: false```

### cni

```enabled: false```

### egressGateways

```enabled: true```

### galley

```enabled: false```

### ingressGateways

```enabled: true```

### nodeAgent

```enabled: false```

### pilot

```enabled: true```

### policy

```enabled: false```

### sidecarInjector

```enabled: false```

### telemetry

```enabled: false```


## Addon components

### grafana

```enabled: true```

### istiocoredns

```enabled: false```

### kiali

```enabled: true```

### prometheus

```enabled: true```

### tracing

```enabled: true```
