if [ $1 = '-h' ]; then
  echo "Open SSH shell on private personal server using alfa as jump server "
  echo "Usage: ./jumpIn.sh uniboEmail clusterUser clusterNumber"
else
  echo "Opening shell for isi-vclust$3.csr.unibo.it"
  ssh -J $1@alfa.csr.unibo.it $2@isi-vclust$3.csr.unibo.it
fi