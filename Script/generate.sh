#!/bin/bash

openssl req -x509 -newkey rsa:2048 -out CAcert.cer -outform PEM -keyout privkeyB.pvk -days 90 -verbose -config CnfFile.cnf -nodes -sha256 -subj "/CN=CAcert"

openssl req -newkey rsa:2048 -keyout privatekeyA.pvk -out unsigned.req -subj /CN=smail.pwr.edu.pl -sha256 -nodes
openssl x509 -req -CA CAcert.cer -CAkey privkeyB.pvk -in unsigned.req -out CertA.cer -days 90 -extfile v3.ext -sha256 -set_serial 0x1111

