class GraphsController < ApplicationController
  def show
  	@chart = Fusioncharts::Chart.new({
        width: "1200",
        height: "500",
        type: "column2d",
        renderAt: "chartContainer",
        dataSource: {
            chart: {
            caption: "SAP",
            subCaption: "Vancouver",
            xAxisname: "Month",
            yAxisName: "Waste Count",
            #numberPrefix: "$",
            theme: "fint",
            exportEnabled: "1",
            },
            # categories: [{
            #         category: [
            #             { label: "Q1" },
            #             { label: "Q2" },
            #             { label: "Q3" },
            #             { label: "Q4" }
            #         ]
            #     }],
            #     dataset: [
            #         {
            #             seriesname: "Previous Year",
            #             data: [
            #                 { value: "10000" },
            #                 { value: "11500" },
            #                 { value: "12500" },
            #                 { value: "15000" }
            #             ]
            #         },
            #         {
            #             seriesname: "Current Year",
            #             data: [
            #                 { value: "25400" },
            #                 { value: "29800" },
            #                 { value: "21800" },
            #                 { value: "26800" }
            #             ]
            #         }
            #   ]
            data: [{
            		"label": "Jan",
            		"value": "20.2"
            	}, {
            		"label": "Feb",
            		"value": "24.1"
            	}, {
            		"label": "Mar",
            		"value": "22.7"
            	}, {
            		"label": "Apr",
            		"value": "20.9"
            	}, {
            		"label": "May",
            		"value": "26.3"
            	}, {
            		"label": "Jun",
            		"value": "18.4"
            	}, {
            		"label": "Jul",
            		"value": "16.2"
            	}, {
            		"label": "Aug",
            		"value": "14.1"
            	}, {
            		"label": "Sept",
            		"value": "21.9"
            	}, {
            		"label": "Oct",
            		"value": "27.7"
            	}, {
            		"label": "Nov",
            		"value": "28.4"
            	}, {
            		"label": "Dec",
            		"value": "23.2"
            	}
            ]
        }
    })

    @pie = Fusioncharts::Chart.new({
    	width: "1200",
        height: "500",
        type: "pie3d",
        renderAt: "pieContainer",
        dataSource: {
            chart: {
            caption: "SAP",
            subCaption: "Vancouver",
            xAxisname: "Month",
            yAxisName: "Waste Count",
            startingAngle: "120",
            showLabels: "0",
            showLegend: "1",
            enableMultiSlicing: "0",
            slicingDistance: "15",
            showPercentValues: "1",
            showPercentInTooltip: "0",
            plotTooltext: "Month : $label Total Waste Count : $datavalue",
            theme: "fint",
            exportEnabled: "1",
        },
        data: [{
            		"label": "Jan",
            		"value": "20.2"
            	}, {
            		"label": "Feb",
            		"value": "24.1"
            	}, {
            		"label": "Mar",
            		"value": "22.7"
            	}, {
            		"label": "Apr",
            		"value": "20.9"
            	}, {
            		"label": "May",
            		"value": "26.3"
            	}, {
            		"label": "Jun",
            		"value": "18.4"
            	}, {
            		"label": "Jul",
            		"value": "16.2"
            	}, {
            		"label": "Aug",
            		"value": "14.1"
            	}, {
            		"label": "Sept",
            		"value": "21.9"
            	}, {
            		"label": "Oct",
            		"value": "27.7"
            	}, {
            		"label": "Nov",
            		"value": "28.4"
            	}, {
            		"label": "Dec",
            		"value": "23.2"
            	}
            ]
        }	
    })

    @line = Fusioncharts::Chart.new({
        :height => 100,
        :width => 600,
        :type => 'mscombi2d',
        :renderAt => 'lineContainer',
        :dataSource => '{
              "chart:  {
                "caption": "Actual Revenues, Targeted Revenues & Profits",
                "subcaption": "Last year",
                "xaxisname": "Month",
                "yaxisname": "Amount (In USD)",
                "numberprefix": "$",
                "theme": "ocean"
            },
            "categories": [
                {
                    "category": [
                        { 
	                    "seriesname": "Projected Revenue",
	                    "renderas": "line",
	                    "showvalues": "0",
	                    "data": [
	                        {
	                            "value": "15000"
	                        },
	                        {
	                            "value": "16000"
	                        },
	                        {
	                            "value": "17000"
	                        },
	                        {
	                            "value": "18000"
	                        },
	                        {
	                            "value": "19000"
	                        },
	                        {
	                            "value": "19000"
	                        },
	                        {
	                            "value": "19000"
	                        },
	                        {
	                            "value": "19000"
	                        },
	                        {
	                            "value": "20000"
	                        },
	                        {
	                            "value": "21000"
	                        },
	                        {
	                            "value": "22000"
	                        },
	                        {
	                            "value": "23000"
	                        }
	                    ]

                    }]
                }]
            }'
  end

  def edit
  end
end
