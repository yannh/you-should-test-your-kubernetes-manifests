# You should test your Kubernetes manifests! Yes, you should.

Trying to deploy Nginx to Kubernetes, I copied the deployment manifest from
the [Kubernetes documentation](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/).

```
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment
  labels:
    app: nginx
spec:
  replicas: 3
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: nginx:1.14.2
        ports:
        - containerPort: 80
```

This manifest has been deployed without problem to my Kubernetes cluster.

The Kubernetes Service to make this available to other deployments,
there was no example for, and therefore I created it manually:

```
apiVersion: v1
kind: service 
metadata:
   name: nginx-service
spec:
  ports;
  - port: 80
    protocol: tcp
  selector:
    run: nginx-service
```

I *think* it is correct, but I might have inadvertently made some mistakes.

How can I ensure this manifest is correct before deploying it to my cluster?



