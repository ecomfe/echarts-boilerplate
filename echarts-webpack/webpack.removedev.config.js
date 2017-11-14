var webpack = require('webpack');

var plugins = [
    new webpack.DefinePlugin({
        'typeof __DEV__': JSON.stringify('boolean'),
        '__DEV__': false
    })
];
var outputSuffix = '';

module.exports = {
    plugins: plugins,
    entry: {
        'webpack-req-ec': __dirname + '/src/webpack-req-ec.js'
    },
    output: {
        libraryTarget: 'umd',
        library: 'echarts',
        path: __dirname + '/dist',
        filename: '[name].removedev.js'
    }
};