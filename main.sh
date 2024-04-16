


rm -Rf wasi-sdk ||:
git clone --depth 500 --single-branch --branch main  https://github.com/WebAssembly/wasi-sdk
cd wasi-sdk 
rm -Rf .git
cd ..
#cd wasi-sdk/src

#mkdir llvm-project ||:
#cd llvm-project

#git init
#git config core.sparsecheckout true
#git remote add origin https://github.com/llvm/llvm-project.git

#cat << EOF > .git/info/sparse-checkout
#runtimes/
#libcxxabi/
#libcxx/
#third-party/
#llvm/utils/
#llvm/cmake/config.guess
#EOF

#git fetch --depth 1 origin main
#git checkout main
#rm -Rf .git
#cd ..
#rm -Rf wasi-libc ||:
#git clone --single-branch --branch main --depth 1 https://github.com/trcrsired/wasi-libc
#rm -Rf .git
#cd ..
#ver="$(git describe --tags --abbrev=0)"
#rm -Rf .git
#cd ..

git config --global user.name 'huakim'
git config --global user.email 'fijik19@gmail.com'
git add --all
git commit -m update
git push
