---
title: Rolling Kubernetes Deployments
date: 2024-04-30T16:03:13-07:00
draft: true
---
https://kubernetes.io/docs/tutorials/kubernetes-basics/update/update-intro/

How to update a Kube pod with the latest off of a docker repo.

```bash
kubectl set image deployments/kubernetes-bootcamp kubernetes-bootcamp=docker.io/jocatalin/kubernetes-bootcamp:v2
```
