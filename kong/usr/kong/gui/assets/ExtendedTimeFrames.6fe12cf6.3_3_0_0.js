/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

const e=[{text:"Last 5 Minutes",value:{text:"Last 5 Minutes",timeFrameLength:300,stepSize:1,param:"seconds",ticksMod:60,refreshInterval:1e4}},{text:"Last 30 Minutes",value:{text:"Last 30 Minutes",timeFrameLength:1800,stepSize:60,param:"minutes",ticksMod:300,refreshInterval:3e4}},{text:"Last 60 Minutes",value:{text:"Last 60 Minutes",timeFrameLength:3600,stepSize:60,param:"minutes",ticksMod:900,refreshInterval:6e4}},{text:"Last 6 Hours",value:{text:"Last 6 Hours",timeFrameLength:21600,stepSize:60,param:"minutes",ticksMod:3600,refreshInterval:36e4}},{text:"Last 12 Hours",value:{text:"Last 12 Hours",timeFrameLength:43200,stepSize:60,param:"minutes",ticksMod:7200,refreshInterval:72e4}},{text:"Last 24 Hours",value:{text:"Last 24 Hours",timeFrameLength:86400,stepSize:60,param:"minutes",ticksMod:14400,refreshInterval:9999999}},{text:"Last 7 Days",value:{text:"Last 7 Days",timeFrameLength:604800,stepSize:3600,param:"hours",ticksMod:100800,refreshInterval:9999999}},{text:"Last 30 Days",value:{text:"Last 30 Days",timeFrameLength:2592e3,stepSize:3600,param:"hours",ticksMod:432e3,refreshInterval:9999999}},{text:"Last 90 Days",value:{text:"Last 90 Days",timeFrameLength:7776e3,stepSize:86400,param:"days",ticksMod:1296e3,refreshInterval:9999999}},{text:"Last 180 Days",value:{text:"Last 180 Days",timeFrameLength:15552e3,stepSize:86400,param:"days",ticksMod:2592e3,refreshInterval:9999999}},{text:"Last Year",value:{text:"Last Year",timeFrameLength:31536e3,stepSize:86400,param:"days",ticksMod:144e4,refreshInterval:9999999}},{text:"Last 2 Years",value:{text:"Last 2 Years",timeFrameLength:63072e3,stepSize:86400,param:"days",ticksMod:288e4,refreshInterval:9999999}}];export{e as o};