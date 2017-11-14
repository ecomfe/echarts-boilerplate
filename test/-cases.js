(function () {

    var pagePaths = [
        'echarts-webpack/jump-bar.html',
        'echarts-webpack/jump-map.html',
        'echarts-webpack/dataTool.html',
        'echarts-webpack/es-line.html',
        'echarts-webpackold/jump-bar.html',
        'echarts-webpackold/jump-map.html',
        'echarts-webpackold/dataTool.html',
        'echarts-wordcloud-webpack/index.html',
        'echarts-wordcloud-webpack/optionKeywords.html',
        'echarts-liquidfill-webpack/index.html'
    ];

    window.caseFrame.init({
        dom: document.getElementById('main'),
        pagePaths: pagePaths,
        baseURL: '..',
        disableRendererSelector: true,
        disableDistSelector: true
    });

})();