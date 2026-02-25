# docker-ddclient

A lightweight runner of ddclient. Just mount a ddclient.conf volume to /etc/ddclient/ddclient.conf and go!


### Example Usage
1. Create a ddclient.conf file to mount to the container. For example, this one works with updating Porkbun records:
```
cat > ddclient.conf << 'EOF'
use=web, web=freedns, ssl=yes

protocol=porkbun
server=api.porkbun.com
apikey=my-api-key
secretapikey=my-secret-api-key
root-domain=my-domain.com
sub-domain.my-domain.com,sub-domain2.my-domain.com
```

2. Build the image using the provided Dockerfile:
`docker build . -t ddclient-docker:latest`

3. Mount the ddclient.conf as a volume to the container, and run the container:
`docker run --name ddclient --rm -v ./ddclient.conf:/etc/ddclient/ddclient.conf:ro ddclient-docker:latest`
