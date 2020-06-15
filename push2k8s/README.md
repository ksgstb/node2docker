# Helloworld service

This was created 6/14/20 by ksg and is based upon the istio helloworld with primarily one change thus far to indicate what the container name.  
Note that in pulling the code to github and pushing it back that I deleted from the original helloworld the subdir that was there. If need to use that should go back to a prior image.

kubectl apply -f helloworld.yaml

## Configure the helloworld gateway

Apply the helloworld gateway configuration:

```bash
kubectl apply -f helloworld-gateway.yaml
```

export GATEWAY_URL=$INGRESS_HOST:$INGRESS_PORT
curl http://$GATEWAY_URL/hello
```


## Cleanup

```bash
kubectl delete -f helloworld.yaml
kubectl delete -f helloworld-gateway.yaml
kubectl delete hpa helloworld-v1 helloworld-v2
```
