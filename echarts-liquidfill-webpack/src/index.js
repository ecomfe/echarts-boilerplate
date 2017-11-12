
var echarts = require('echarts/lib/echarts');
require('echarts-liquidfill');

// var option = {
//     series: [{
//         type: 'liquidFill',
//         data: [0.6, 0.5, 0.4, 0.3]
//     }]
// };
var option = {
    series: [{
        type: 'liquidFill',
        data: [0.5, 0.4, 0.3],
        color: ['red', '#0f0', 'rgb(0, 0, 255)'],
        itemStyle: {
            normal: {
                opacity: 0.6
            },
            emphasis: {
                opacity: 0.9
            }
        }
    }]
};
// var dom = document.createElement('div');
// dom.style.cssText = 'chart';
// document.body.appendChild(dom);

var chart = echarts.init(document.getElementById('main'));

chart.setOption(option);

