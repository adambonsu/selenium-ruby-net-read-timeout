# Localhost certificates

When building and running `fe-cassandra-acceptance` locally for the first time I found that the existing certificates in [server/certs](..) had expired. This prevented me from accessing Cassandra in Chrome via <https://cassandra:5000>.

In case anyone else has the same issue, here are the steps I used to generate new certificates.

## 1. create self-signed root certificate

```console
% openssl req -x509 -nodes -new -sha256 -days 390 -newkey rsa:2048 -keyout "RootCA.key" -out "RootCA.pem" -subj "/C=de/CN=localhost.local"
% openssl x509 -outform pem -in "RootCA.pem" -out "RootCA.crt"
```

> **Note**
> The parameter `-days` sets the number of days the certificate is valid. The maximum allowed value is 397 days.

## 2. define domains and subdomains to include

Create a text file named `vhosts_domains.ext` with the following contents:

```text
authorityKeyIdentifier=keyid,issuer
basicConstraints=CA:FALSE
keyUsage = digitalSignature, nonRepudiation, keyEncipherment, dataEncipherment
subjectAltName = @alt_names
[alt_names]
DNS.1 = localhost
DNS.2 = cassandra
DNS.3 = uspstub
DNS.4 = discoverystub
```

> **Note**
> I found that, after updating the certificates for Cassandra, client-side requests from Cassandra to USPStub and DiscoveryStub were failing because of similar certificate errors. By adding `uspstub` and `discoverystub` to the list of `alt_names` I was able to cut and paste the whole `certs/` directory to those respective repositories as well.

## 3. create the certificate

```console
% openssl req -new -nodes -newkey rsa:2048 -keyout server.key -out server.csr -subj "/C=de/ST=State/L=City/O=Organization/CN=localhost.local"
% openssl x509 -req -sha256 -days 1024 -in server.csr -CA RootCA.pem -CAkey RootCA.key -CAcreateserial -extfile vhosts_domains.ext -out server.crt
```

## 4. add the certificates to macOS

Open the files `RootCA.crt` and `server.crt` in Keychain Access to add them to the System Keychain. Double-click on each file to open up the certificate settings and update the trust settings "When using this certificate:" to "Always Trust":

![Always Trust](Always%20Trust.png)

## 5. move certificates

Replace the files in [server/certs](..) with the certificate files generated. Quick method is to rename `server/certs` as `server/old_certs` and move the `updated_certs` folder up a level and rename as `certs`.
