git clone git@github.com:openshift/origin.git

cd origin

branchnames=$(git branch -r |  grep origin/release-4. | sed  's/.*origin\/release-\(.*\)/\1/g')

cd ..


git clone git@github.com:ritmun/osd-example-operator.git

cd osd-example-operator

for b in $branchnames; do
  git checkout $b
  git push -u origin $b

done 
