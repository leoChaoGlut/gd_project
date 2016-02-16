"use strict"

function treeChartBuilder(containerDom, mapData, nodeStyle, treeStyle) {
    treeStyle = treeStyle ? treeStyle : "tree";
    nodeStyle = nodeStyle ? nodeStyle : "node";

    var tree = $("<div class='" + treeStyle + "' style='margin:0;'></div>");

    function mapLengthOf(map) {
        var count = 0;
        for (var key in map) {
            count++;
        }
        return count;
    }

    function recursion(parent, mapData) {
        for (var key in mapData) {
            var data = mapData[key];
            var child = $("<div class='node'><div class='select'><span>" + data.name + "</span><span> - </span><span>" + data.prof + "</span></div><div class='option shadow-1'><div class='switch'>*</div></div></div>");
            if (mapLengthOf(data.children) > 0) {
                recursion(child, data.children);
            }
            parent.append(child);
        }
    }

    recursion(tree, mapData);

    containerDom.append(tree);
    
    return containerDom;
}

function pieChartBuilder (container,mapData) {
    
    // echarts.init(document.getElementById("pie-chart"));

}

function optionTreeBuilder(containerDom, mapData) {
    var tree = $("<div class='" + treeStyle + "' style='margin:0;'></div>");

    function mapLengthOf(map) {
        var count = 0;
        for (var key in map) {
            count++;
        }
        return count;
    }

    function recursion(parent, mapData) {
        for (var key in mapData) {
            var data = mapData[key];
            var child = $("<div class='node'><div class='select'><span>" + data.name + "</span><span> - </span><span>" + data.prof + "</span></div><div class='option shadow-1'><div class='switch'>*</div></div></div>");
            if (mapLengthOf(data.children) > 0) {
                recursion(child, data.children);
            }
            parent.append(child);
        }
    }

    recursion(tree, mapData);

    containerDom.append(tree);
    
    return containerDom;
}