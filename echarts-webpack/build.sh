basePath=$(cd `dirname $0`; pwd)
currPath=`pwd`

cd ${basePath}

rm -r node_modules/zrender
npm install zrender
rm -r node_modules/echarts
npm install echarts
rm -r node_modules/echarts/node_modules

cp -r ../../echarts/lib node_modules/echarts/
cp -r ../../echarts/extension node_modules/echarts/
cp ../../echarts/index.js node_modules/echarts/
cp -r ../../zrender/lib node_modules/zrender/
cp ../../zrender/index.js node_modules/zrender/

"${basePath}/node_modules/.bin/webpack" --output-library-target umd ${basePath}/src/webpack-req-ec.js ${basePath}/dist/webpack-req-ec.js
"${basePath}/node_modules/.bin/webpack" --output-library-target umd ${basePath}/src/webpack-req-eclibec.js ${basePath}/dist/webpack-req-eclibec.js
"${basePath}/node_modules/.bin/webpack" --output-library-target umd ${basePath}/src/webpack-dataTool.js ${basePath}/dist/webpack-dataTool.js
"${basePath}/node_modules/.bin/webpack" --output-library-target umd ${basePath}/src/es-line.js ${basePath}/dist/es-line.js
"${basePath}/node_modules/.bin/webpack" --config webpack.removedev.config.js

cd ${currPath}
