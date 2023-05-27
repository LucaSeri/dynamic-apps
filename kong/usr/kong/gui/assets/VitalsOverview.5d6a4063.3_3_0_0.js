/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{Z as z,B as D,C as x,ak as Q,am as Dt,ad as xt,y as J,_ as F,r as b,o as d,c as h,a as v,b as u,w as y,l as K,t as R,h as I,R as A,U as S,d as E,af as It,aQ as Vt,V as Nt,p as Et,e as Ot,ag as Lt,u as Mt,Q as Ut,ay as m,S as Gt,__tla as Ft}from"./index.84d84090.3_3_0_0.js";import{a as At,__tla as St}from"./VitalsDisabled.f093ed15.3_3_0_0.js";import{N as Y,a as jt,__tla as Kt}from"./NodeDataTable.67ffbca2.3_3_0_0.js";import{g as X}from"./chartHelpers.1bf67333.3_3_0_0.js";import{_ as Rt,__tla as Bt}from"./LineChartWrapper.be3dd56e.3_3_0_0.js";import{C as Pt,__tla as Ht}from"./ChartHeader.0a2c695d.3_3_0_0.js";import{T as $t,__tla as Wt}from"./TimeFramePicker.465b75eb.3_3_0_0.js";import{o as Zt}from"./TimeFrames.25a2a20b.3_3_0_0.js";import{o as qt}from"./ExtendedTimeFrames.6fe12cf6.3_3_0_0.js";import{v as zt}from"./vitalsGroup.41ed9564.3_3_0_0.js";import{__tla as Qt}from"./monaco-editor.90904fcf.3_3_0_0.js";let tt,Jt=Promise.all([(()=>{try{return Ft}catch{}})(),(()=>{try{return St}catch{}})(),(()=>{try{return Kt}catch{}})(),(()=>{try{return Bt}catch{}})(),(()=>{try{return Ht}catch{}})(),(()=>{try{return Wt}catch{}})(),(()=>{try{return Qt}catch{}})()]).then(async()=>{const et=(t,a)=>{const e=J("api"),o=z().infoConfig,l=D(!1),s=D(null),r=D(!1),i=D(null),p=D(()=>""),n=x(()=>Object.keys(t)),g=x(()=>n.value.map(c=>t[c].url).filter(Boolean)),w=x(()=>o.vitals),O=(c,_)=>{n.value.forEach(N=>{const C=t[N];C.url===_&&(C.rawData=c)})},V=()=>{clearTimeout(i.value),i.value=null},L=()=>{var c;V(),(c=s.value)!=null&&c.refreshInterval&&(i.value=window.setTimeout(T,s.value.refreshInterval))},T=()=>{var C;if(!((C=s.value)!=null&&C.param))return;L(),l.value=!0;const c=s.value.param,_=Math.floor(xt().unix()/s.value.stepSize)*s.value.stepSize,N=_-s.value.timeFrameLength;return Promise.all(g.value.map(G=>Promise.resolve().then(()=>{if(!w.value)return;const f={start_ts:N,interval:c};return e==null?void 0:e.getVitals(G,f,a).then(k=>k.data).catch(k=>{console.debug("vitals returned err: ",k)})}).then(f=>{var k;(f==null?void 0:f.meta)&&c===((k=s.value)==null?void 0:k.param)&&(f.meta.clientEndTimestamp=_,f.meta.clientStartTimestamp=N,O(f,G))}))).then(()=>{l.value=!1})},M=c=>{r.value=c},j=c=>{s.value=c},U=c=>{p.value=c};return Q(()=>w.value,()=>{T()}),Q(()=>s.value,()=>{T()}),Dt(()=>{V()}),{vitalsLoading:l,timeFrame:s,isUtc:r,killPolling:i,labelTemplate:p,config:o,chartKeys:n,urls:g,vitalsEnabled:w,setRawData:O,setPolling:L,teardownPolling:V,fetchData:T,updateIsUtc:M,updateTimeFrame:j,updateLabelTemplate:U}},at={name:"NodeLegend",props:{onUpdate:{type:Function,required:!0},legendItems:{type:Object,default:()=>({})},vitalsEnabled:{type:Boolean,default:!1},labelTemplate:{type:Function,required:!0}},computed:{legendKeys(){return Object.keys(this.legendItems)},anyActive(){return this.legendKeys.some(t=>t!=="cluster"&&this.legendItems[t].active)},showNodes(){return this.legendKeys.every(t=>t==="cluster"||this.legendItems[t].state)}},methods:{getHslaFromColorObj:X,toggleItem(t){t.state=!t.state,this.onUpdate(this.showNodes)},buttonStyle(t){const a=this.getHslaFromColorObj(t.color,1);return{"background-color":t.state?a:"#ffffff",color:t.state?"#ffffff":a,"border-color":a}},toggleShowNodes(){const t=!this.showNodes;this.legendKeys.forEach(a=>{a!=="cluster"&&(this.legendItems[a].state=t)}),this.onUpdate(t)}}},st={key:0,class:"chart-legend-wrapper"};function lt(t,a,e,o,l,s){const r=b("KButton");return e.vitalsEnabled?(d(),h("div",st,[v("div",null,[u(Vt,{tag:"div",class:"row mb-4 ml-0",name:"list"},{default:y(()=>[s.anyActive?(d(),K(r,{key:"toggle","is-rounded":!1,class:"node-toggle-button",appearance:"outline",onClick:a[0]||(a[0]=i=>s.toggleShowNodes())},{default:y(()=>[v("span",null,R(s.showNodes?"Hide All Nodes":"Show All Nodes"),1)]),_:1})):I("",!0),(d(!0),h(A,null,S(e.legendItems,(i,p)=>(d(),h("div",{key:i.index},[i.active?(d(),K(r,{key:0,pressed:i.state,style:It(s.buttonStyle(i)),class:"legend-button",onClick:n=>s.toggleItem(i)},{default:y(()=>[E(R(e.labelTemplate(i.hostname,p)),1)]),_:2},1032,["pressed","style","onClick"])):I("",!0)]))),128))]),_:1})])])):I("",!0)}const it=F(at,[["render",lt],["__scopeId","data-v-483814a7"]]),ot={name:"NodeChartTabs",components:{NodeChartList:Y,NodeDataTable:jt},props:{activeTab:{type:Number,default:null},tabs:{type:Array,default:null},nodes:{type:Object,default:null},siblingEvent:{type:Object,default:null},notifySiblings:{type:Function,default:null},height:{type:Number,default:200},timeFrame:{type:Object,default:null},isUtc:{type:Boolean,default:!1}},computed:{filteredTabs(){return this.tabs.filter((t,a)=>a===this.activeTab)}}},nt={class:"nav nav-tabs mb-2"},rt=["title"],dt={class:"row"},ct={class:"row"},ht={key:0,class:"mt-4 col"};function ut(t,a,e,o,l,s){const r=b("router-link"),i=b("NodeChartList"),p=b("NodeDataTable");return d(),h("div",null,[v("ul",nt,[(d(!0),h(A,null,S(e.tabs,(n,g)=>(d(),h("li",{key:n.title,title:n.title,class:"nav-item"},[u(r,{to:{name:n.route},class:Nt([{active:g===e.activeTab},"nav-link"])},{default:y(()=>[E(R(n.title),1)]),_:2},1032,["to","class"])],8,rt))),128))]),(d(!0),h(A,null,S(s.filteredTabs,n=>(d(),h("div",{key:n.title,class:"chart-group mb-4"},[v("div",dt,[u(i,{"chart-visible":!!n.updateOptions,"chart-list":n,"sibling-event":e.siblingEvent,height:e.height,"notify-siblings":e.notifySiblings,"time-frame":e.timeFrame,"is-utc":e.isUtc},null,8,["chart-visible","chart-list","sibling-event","height","notify-siblings","time-frame","is-utc"])]),v("div",ct,[n.dataTableConfig?(d(),h("div",ht,[u(p,{list:n,nodes:e.nodes},null,8,["list","nodes"])])):I("",!0)])]))),128))])}const mt=F(ot,[["render",ut]]),pt=[{h:0,s:0,l:30},{h:0,s:0,l:45},{h:0,s:0,l:60},{h:0,s:0,l:75},{h:146,s:70,l:62},{h:79,s:70,l:65},{h:49,s:90,l:69},{h:35,s:90,l:67},{h:20,s:90,l:60},{h:0,s:90,l:62},{h:292,s:44,l:70},{h:261,s:48,l:65},{h:245,s:40,l:60},{h:227,s:90,l:55},{h:219,s:90,l:60},{h:208,s:90,l:75},{h:186,s:75,l:65},{h:168,s:70,l:50}],bt={name:"NodeChartWrapper",components:{NodeChartList:Y,NodeLegend:it,NodeChartTabs:mt},extends:Rt,props:{labelTemplate:{type:Function,default:()=>{}},chartConfig:{type:Object,default:null}},data(){return{timeRange:{},labels:[],colors:[],siblingEvent:null,nodeData:{},nodes:{},loadedTabs:{}}},computed:{allCharts(){return this.chartConfig.mainGroup&&this.chartConfig.tabsGroup?[...this.chartConfig.mainGroup,...this.chartConfig.tabsGroup]:this.chartConfig.mainGroup||this.chartConfig.tabsGroup||[]},visibleCharts(){return this.chartConfig.mainGroup&&this.chartConfig.tabsGroup&&this.chartConfig.tabsGroup[this.activeTab]?[this.chartConfig.tabsGroup[this.activeTab],...this.chartConfig.mainGroup]:this.chartConfig.mainGroup||this.chartConfig.tabsGroup&&this.chartConfig.tabsGroup[this.activeTab]||[]},activeTab(){return this.$route.meta.index},stats(){return this.rawData&&this.rawData.stats?this.rawData.stats:{}},meta(){return this.rawData&&this.rawData.meta?this.rawData.meta:{}}},watch:{isUtc:{handler:function(){this.redraw(this.visibleCharts)}},activeTab:{handler:function(){this.processData(this.visibleCharts,this.timeRange)}}},mounted(){this.init()},methods:{getHslaFromColorObj:X,getColors(){this.colors=pt.slice()},getChartData(){this.timeRange=this.getTimeRange(this.meta),this.nodeData=this.getNodeData(this.stats,this.meta),this.labels=this.timeRange.labels,Object.keys(this.nodes).forEach(t=>{this.nodes[t].active=!1}),this.processData(this.visibleCharts,this.timeRange)},redraw(t){t.forEach(a=>{let e=5;a.charts.forEach(o=>{const l=o.processedData&&o.processedData.datasets||this.getDatasets(o);!l||(l.forEach(s=>{s.hidden=!this.nodes[s.label]||!this.nodes[s.label].active||!this.nodes[s.label].state,s.hidden||(e=s.data.reduce((r,i)=>Math.max(r,i.y||0),e))}),o.processedData={labels:this.labels,datasets:l})}),a.table=Object.assign({},a.tempTableData),a.updateOptions={suggestedYMax:e}})},init(){this.allCharts.forEach(t=>{t.charts.forEach(a=>{a.options=this.getOptions(a),a.tooltipModel=null})})},notifySiblings(t,a){this[t]=a},chartLegendUpdate(){this.redraw(this.visibleCharts)},getOptions(t){const a=[{stacked:t.stacked,id:"y-axis-main",ticks:{beginAtZero:!0,max:t.max,callback:t.yCallback,maxTicksLimit:5}}];return t.stacked&&a.push({id:"y-axis-cluster-total",stacked:!1,display:!1,ticks:{beginAtZero:!0,max:t.max,callback:t.yCallback,maxTicksLimit:5}}),{plugins:{tooltip:{itemSort:(e,o,l)=>l.datasets[e.datasetIndex].label==="cluster"?-1:l.datasets[o.datasetIndex].label==="cluster"?1:e.datasetIndex>o.datasetIndex?-1:e.datasetIndex<o.datasetIndex?1:0,callbacks:{label:this.formatTooltipLabel(t)},external:this.drawTooltip(t)}},scales:{xAxes:[{ticks:{callback:this.timeTicksFormat},time:{parser:this.timeParser}}],yAxes:a}}},drawTooltip(t){return({tooltip:a})=>{t.tooltipModel=Object.assign({},a)}},getDatasets(t){return t.tempChartData?Object.keys(t.tempChartData).reduce((a,e)=>{const o=t.tempChartData[e].dataArray,l=e==="cluster"||o.some(({y:s})=>s!==t.defaultValue);if(this.updateNode(e,t.tempChartData[e].hostname,l),l){const s=this.getHslaFromColorObj(this.nodes[e].color),r=this.getHslaFromColorObj(this.nodes[e].color,{a:.8});a.push({spanGaps:!!t.spanGaps,data:o,fill:t.stacked&&e!=="cluster"?"origin":!1,backgroundColor:r,borderColor:s,hostname:t.tempChartData[e].hostname,label:e,lineTension:0,borderWidth:1.2,pointRadius:t.pointRadius||0,pointBorderWidth:1.2,pointHoverBackgroundColor:r,pointBorderColor:s,borderJoinStyle:"round",yAxisID:t.stacked&&e==="cluster"?"y-axis-cluster-total":"y-axis-main"})}return a},[]).sort((a,e)=>{const o=this.nodes[a.label].index,l=this.nodes[e.label].index;return o>l?1:o<l?-1:0}):null},updateNode(t,a,e){this.nodes[t]||(this.nodes[t]={state:!0,active:!1,hostname:a,index:Object.keys(this.nodes).length}),e&&(this.nodes[t].active=!0),!this.nodes[t].color&&e&&(this.colors.length===0&&this.getColors(),this.nodes[t].color=t==="cluster"?{h:0,s:0,l:30}:this.colors.pop())},formatTooltipValue(t,a){return typeof a!="function"?t:`${a(t)}`},formatTooltipLabel(t){return a=>{const e=a.dataset.label,o=a.dataset.hostname,l=this.labelTemplate(o,e),s=this.formatTooltipValue(a.formattedValue,t.tooltipCallback);return[l,s]}},getNodeData(t,a){return!t||!a?[]:Object.keys(t).map(e=>{const o=a.nodes[e]&&a.nodes[e].hostname||"hostname unavailable";return{id:e,stats:t[e],hostname:o}})},processData(t,a){var e;(e=a==null?void 0:a.range)==null||e.forEach((o,l)=>{const s=l===0;t.forEach(r=>{s&&(r.tempTableData={cluster:{cluster:0,total:0,min:null,max:null}}),r.charts.forEach(i=>{s&&(i.tempChartData={cluster:{dataArray:[],hostname:"cluster"}},i.processedData=null),i.acc={cluster:0,total:0},this.nodeData.forEach(n=>{let g=n.stats[o];g===void 0&&(g=i.defaultTimestampValue),s&&(r.tempTableData[n.id]={cluster:0,total:0},i.tempChartData[n.id]={dataArray:[],hostname:n.hostname});const w=i.getStat(g,r.tempTableData[n.id],r.tempTableData.cluster);i.tempChartData[n.id].dataArray.push({x:o,y:w})});const p=i.getClusterData(r.tempTableData.cluster);i.tempChartData.cluster.dataArray.push({x:o,y:p})})})}),this.redraw(t)}}},gt={key:0,class:"row"},ft={class:"col"};function vt(t,a,e,o,l,s){const r=b("NodeChartList"),i=b("NodeLegend"),p=b("NodeChartTabs");return d(),h("div",null,[(d(!0),h(A,null,S(e.chartConfig.mainGroup,n=>(d(),h("div",{key:n.title,class:"row chart-group mb-4"},[u(r,{"chart-visible":!!n.updateOptions,"chart-list":n,"sibling-event":l.siblingEvent,height:t.height,"notify-siblings":s.notifySiblings,"time-frame":t.timeFrame,"is-utc":t.isUtc},null,8,["chart-visible","chart-list","sibling-event","height","notify-siblings","time-frame","is-utc"])]))),128)),u(i,{"label-template":e.labelTemplate,"vitals-enabled":t.vitalsEnabled,"legend-items":l.nodes,"on-update":s.chartLegendUpdate,class:"chart-group mb-4"},null,8,["label-template","vitals-enabled","legend-items","on-update"]),e.chartConfig.tabsGroup?(d(),h("div",gt,[v("div",ft,[u(p,{"active-tab":s.activeTab,tabs:e.chartConfig.tabsGroup,nodes:l.nodes,"sibling-event":l.siblingEvent,"notify-siblings":s.notifySiblings,height:t.height,"time-frame":t.timeFrame,"is-utc":t.isUtc},null,8,["active-tab","tabs","nodes","sibling-event","notify-siblings","height","time-frame","is-utc"])])])):I("",!0)])}const yt=F(bt,[["render",vt],["__scopeId","data-v-6bf33e1f"]]),wt={name:"NodeViewMode",props:{vitalsEnabled:{type:Boolean,default:!1},updateControls:{type:Function,default:()=>{}}},emits:["update-label-template"],data(){return{datasetViewMode:null,datasetViewModeId:null,datasetViewOptions:[{text:"Hostname",value:{id:1,labelTemplate:this.template`${0}`}},{text:"Hostname + ID",value:{id:2,labelTemplate:this.template`${0} - ${1}`}},{text:"ID",value:{id:3,labelTemplate:this.template`${1}`}}]}},watch:{datasetViewModeId:{handler:function(t){const a=this.datasetViewOptions.find(e=>e.value.id===t);a&&(this.datasetViewMode=a.value,this.setDatasetViewMode())}}},mounted(){let t;try{t=parseInt(localStorage.getItem("kong_dataset_view_mode"),10)-1||0}catch{t=0}this.datasetViewMode=this.datasetViewOptions[t].value,this.datasetViewModeId=this.datasetViewMode.id,this.updateControls("labelTemplate",this.datasetViewMode.labelTemplate),this.$emit("update-label-template",this.datasetViewMode.labelTemplate)},methods:{template(t,...a){return(...e)=>e[0]==="cluster"?e[0]:a.reduce((o,l,s)=>(o.push(e[l],t[s+1]),o),[t[0]]).join("")},setDatasetViewMode(){try{localStorage.setItem("kong_dataset_view_mode",this.datasetViewMode.id)}catch{}this.updateControls("labelTemplate",this.datasetViewMode.labelTemplate),this.$emit("update-label-template",this.datasetViewMode.labelTemplate)}}},Ct=t=>(Et("data-v-026b6cbf"),t=t(),Ot(),t),Tt={class:"d-flex align-items-center mb-2 ml-2"},_t=Ct(()=>v("span",{class:"hidden-md-down mr-2 view-mode-picker-label"}," View: ",-1));function kt(t,a,e,o,l,s){const r=b("KSelect");return d(),h("div",Tt,[_t,u(r,{modelValue:l.datasetViewModeId,"onUpdate:modelValue":a[0]||(a[0]=i=>l.datasetViewModeId=i),disabled:!e.vitalsEnabled,class:"view-mode-picker",appearance:"select",items:l.datasetViewOptions.map(i=>({value:i.value.id,label:i.text}))},null,8,["modelValue","disabled","items"])])}let B,P,H,$,W,Z,q;B=F(wt,[["render",kt],["__scopeId","data-v-026b6cbf"]]),P={class:"vitals-overview"},H={key:0},$=E(" Reports "),W=E(" Vitals is a feature within Kong\u2019s Admin API and Kong Manager that provides metrics about the health and performance of Kong nodes and Kong-proxied APIs. "),Z=E(" Learn more "),q={key:1},tt=Lt({__name:"VitalsOverview",setup(t){const a=J("rbac"),e=D({vitalsGroup:{url:"nodes",rawData:null,config:zt}}),{vitalsLoading:o,vitalsEnabled:l,timeFrame:s,isUtc:r,labelTemplate:i,updateIsUtc:p,updateTimeFrame:n,updateLabelTemplate:g}=et(e.value),w=Mt(),O=Ut(),V=z(),L=w.permissions,T=O.docsEnterprise,M=V.infoConfig,j=x(()=>a==null?void 0:a.isAllowed(L,[{path:"/vitals/nodes",actions:["read"]}],"*")),U=x(()=>M.vitals&&M.vitals_strategy==="influxdb"),c=x(()=>U.value?qt:Zt);return(_,N)=>{const C=b("KButton"),G=b("KExternalLink"),f=b("RbacEmptyList");return d(),h("section",P,[m(j)?(d(),h("div",H,[u(At,{"vitals-enabled":m(l)},null,8,["vitals-enabled"]),u(Pt,{"is-loading":m(o),class:"mb-2",title:"Vitals"},{"header-controls":y(()=>[u($t,{"vitals-enabled":m(l),options:m(c),onUpdateIsUtc:m(p),onUpdateTimeFrame:m(n)},null,8,["vitals-enabled","options","onUpdateIsUtc","onUpdateTimeFrame"]),u(B,{"vitals-enabled":m(l),onUpdateLabelTemplate:m(g)},null,8,["vitals-enabled","onUpdateLabelTemplate"]),m(U)?(d(),K(C,{key:0,to:{name:"vitals-reports",params:{returnLink:_.$route.fullPath}},class:"ml-2 mb-2",appearance:"primary"},{default:y(()=>[$]),_:1},8,["to"])):I("",!0)]),_:1},8,["is-loading"]),u(Gt,null,{default:y(()=>[v("p",null,[W,u(G,{href:m(T).url+"kong-enterprise/analytics/"},{default:y(()=>[Z]),_:1},8,["href"])])]),_:1}),u(yt,{"raw-data":e.value.vitalsGroup.rawData,"vitals-enabled":m(l),"chart-config":e.value.vitalsGroup.config,"time-frame":m(s),"is-utc":m(r),"label-template":m(i),height:250},null,8,["raw-data","vitals-enabled","chart-config","time-frame","is-utc","label-template"])])):(d(),h("div",q,[u(f)]))])}}})});export{Jt as __tla,tt as default};