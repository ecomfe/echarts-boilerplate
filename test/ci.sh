projList=(
    "echarts-wordcloud-webpack"
    "echarts-webpack"
    "echarts-webpackold"
    "echarts-liquidfill-webpack"
)
currPath=`pwd`
basePath="$(cd `dirname $0`; pwd)/.."

function run() {

    # node "${basePath}/../echarts/build/build.js" --release

    for p in ${projList[@]}
    do
        installProject ${p}
        cd ${currPath};
    done
}

function installProject() {
    projName=$1
    projPath="${basePath}/${projName}"

    echo "O_O Rebuild ${projName} ..."

    cd ${projPath}

    if [[ $? -ne 0 ]];then
        exit 1; # Wrong directory.
    fi

    sh build.sh
}

run
