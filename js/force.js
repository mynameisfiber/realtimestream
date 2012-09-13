var width = parseInt(d3.select('body').style('width'))/4,
    height = parseInt(d3.select('body').style('height'))/2.;

var color = d3.scale.category20();

var force = d3.layout.force()
    .charge(-120)
    .linkDistance(80)
    .size([width, height]);

var svg = d3.select("#d3_chart").append("svg")
    .attr("width", width)
    .attr("height", height);

d3.json("data/force.json", function(json) {
  force
      .nodes(json.nodes)
      .links(json.links)
      .start();

  var link = svg.selectAll("line.link")
      .data(json.links)
    .enter().append("line")
      .attr("class", "link")
      .style("stroke-width", function(d) { return d.value; })
      .style("stroke", function(d) { return color(d.value); });

  var node = svg.selectAll("circle.node")
      .data(json.nodes)
    .enter().append("circle")
      .attr("class", "node")
      .attr("r", 10)
      .style("fill", function(d) { return color(d.group); })
      .call(force.drag);

  node.append("text")
      .text(function(d) { return d.name; });

  force.on("tick", function() {
    link.attr("x1", function(d) { return d.source.x; })
        .attr("y1", function(d) { return d.source.y; })
        .attr("x2", function(d) { return d.target.x; })
        .attr("y2", function(d) { return d.target.y; });

    node.attr("cx", function(d) { return d.x; })
        .attr("cy", function(d) { return d.y; });
  });
});

