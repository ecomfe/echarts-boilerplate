basePath=$(cd `dirname $0`; pwd)
currPath=`pwd`

cd ${basePath}

rm -r node_modules/echarts
npm install echarts

cp -r ../../echarts/lib node_modules/echarts/
cp -r ../../echarts/extension node_modules/echarts/
cp ../../echarts/index.js node_modules/echarts/

"${basePath}/node_modules/.bin/webpack" --output-library-target umd ${basePath}/src/webpack-req-ec.js ${basePath}/dist/webpack-req-ec.js
"${basePath}/node_modules/.bin/webpack" --output-library-target umd ${basePath}/src/webpack-req-eclibec.js ${basePath}/dist/webpack-req-eclibec.js
"${basePath}/node_modules/.bin/webpack" --output-library-target umd ${basePath}/src/webpack-dataTool.js ${basePath}/dist/webpack-dataTool.js

cd ${currPath}
