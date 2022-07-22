git add .
git commit -m "MOD: update"
git push origin main

cd hugo
hugo

cd ../public
git add .
git commit -m "MOD: update"
git push origin main