#!/bin/bash

#https://get.helm.sh/helm-v3.2.1-linux-amd64.tar.gz
#https://github.com/helm/helm/releases

url="https://get.helm.sh/"
targzfilename="helm-v3.2.1-linux-amd64.tar.gz"
fullurl=$url$targzfilename
echo $fullurl
[ -f $targzfilename ] && rm $targzfilename
wget $fullurl 

outdir="helmunzip"
[ ! -d $outdir ] && mkdir $outdir

tar -zxvf  ./$targzfilename --directory $outdir

chmod +x $outdir/linux-amd64/helm

sudo mv $outdir/linux-amd64/helm /usr/local/bin/helm

rm -rf $outdir
rm $targzfilename


