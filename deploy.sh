ng build --base-href https://naveenkartikr.github.io/AllInOne/ --deploy-url https://naveenkartikr.github.io/AllInOne/
git add .

commitMessage=$1
if [[ "$commitMessage" == "" ]]
then
    commitMessage="Built at $(date)"
fi

git commit -m "$commitMessage"
git push origin master
