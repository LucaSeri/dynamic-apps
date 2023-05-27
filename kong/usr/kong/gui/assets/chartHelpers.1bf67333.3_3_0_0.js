/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

const p={requests:"Requests",hits:"Hits",misses:"Misses",hitPercent:"Hit Ratio",min:"Min",max:"Max",avg:"Average"},b={totalRequests:"Count of all proxy requests received. Includes requests that were rejected due to rate-limiting, failed authentication, etc. ",consumerRequests:"Count of requests made by this consumer, as identified by credentials in the request; e.g., API key or token.",dataStoreHitMiss:"Count of requests to Kong's datastore cache (also known as L2 cache). A \u201CHit\u201D indicates that the response was served from cache. A miss indicates that the record had to be fetched from the datastore. Not every API request will result in datastore cache access - some requests can be served from Kong's worker-specific cache memory.",dataStoreHitRatio:"Ratio of datastore cache hits to the total count of datastore cache requests.",proxyLatencyRequests:"Time that Kong proxy spends processing requests. Includes time to execute plugins that run in the access phase as well as DNS lookup time. Does not include time spent in the load balancer, time spent sending the request to the upstream, or time spent on the response.",upstreamLatency:"Time elapsed between Kong sending requests upstream and Kong receiving the first bytes of responses from upstream.",statusCodesOverview:"HTTP status code classes for all requests.",statusCodesConsumer:"HTTP status codes for requests made by this consumer. Click on a code below to view the routes that returned this response.",statusCodesRoute:"HTTP status codes for requests made to this route.",statusCodesService:"HTTP status codes for requests made to routes of this service."},y={routesByConsumerAndCode:t=>`Routes that returned status code ${t}. Click on a path below to view the route details.`};function c(t,e,s=NaN){return t===e?0:t===s?-1:e===s?1:t<e?-1:1}function d(t,e,s){return e>0?(t/e*(s?100:1)).toFixed(1):null}function q(){return d(this.acc.cluster,this.acc.total,!0)}function w(){return this.acc.cluster}function f(t,e){return e==="cluster"?"-":e}function C(t){return`${t}%`}function T(t,e={}){return`hsla(${e.h||t.h},${e.s||t.s}%,${e.l||t.l}%,${e.a||1})`}function u(t,e,s){const a=typeof e=="number"?t[e]:t;return a??s}function h(t){return t===null||isNaN(t)?"-":`${Math.round(t)} ms`}const k={latency:[{header:"Hostname",sortBy:(t,e)=>c(t.hostname,e.hostname,"cluster")},{header:"ID",formatter:f,sortBy:(t,e)=>c(t.nodeId,e.nodeId,"cluster")},{header:"AVG",formatter:t=>h(t.cluster/t.total),sortBy:(t,e)=>c(Math.round(t.data.cluster/t.data.total),Math.round(e.data.cluster/e.data.total))},{header:"Min",formatter:t=>h(t.min),sortBy:(t,e)=>c(t.data.min,e.data.min)},{header:"Max",formatter:t=>h(t.max),sortBy:(t,e)=>c(t.data.max,e.data.max)}]};function N(t){return(t+"").replace(/\D/g,"").replace(/\B(?=(\d{3})+(?!\d))/g,",")||"0"}function O(t){return t.cluster+=this.acc.cluster,t.total+=this.acc.total,d(this.acc.cluster,this.acc.total,!1)}function R(t){if(t>=1e3){const e=Number(t%1e3!==0);return`${parseFloat(t/1e3).toFixed(e)}k`}return parseFloat(t).toFixed(0)}function l(t,e,s){return e==null?t:t==null?e:s(e,t)}function I(t){const e=u(t,this.dataIndex,this.defaultValue);return e!==null&&(this.acc.cluster+=e),e}function H(t){const e=u(t,this.dataIndex1,this.defaultValue),s=u(t,this.dataIndex2,this.defaultValue),a=e+s;return this.acc.cluster+=e,this.acc.total+=a,d(e,a,!0)}function M(t,e,s){const a=u(t,this.dataIndex,this.defaultValue),r=u(t,this.totalRequestDataIndex,this.defaultValue),i=u(t,this.minIndex,this.defaultValue),n=u(t,this.maxIndex,this.defaultValue);if(e.min=l(i,e.min,Math.min),e.max=l(n,e.max,Math.max),s.min=l(e.min,s.min,Math.min),s.max=l(e.max,s.max,Math.max),a!==null&&r!==null){const o=a*r;this.acc.cluster+=o,e.cluster+=o,this.acc.total+=r,e.total+=r}return a}function j(t,e){const s=this.colors[`${t.charAt(0)}xx`]||this.colors.nonStandard;return this.getHslaFromColorObj(s,e)}function v(t){return[t.dataset.label,t.formattedValue]}function P(t){return t.match(/x{2}$/g)&&!this.colors[t]}function B(){this.counters={total:0};const t=this.getTimeRange(this.meta),e=t.range.reduce((a,r)=>{const i=this.stats[r];return i?Object.keys(i).filter(n=>!this.isNonStandardClass(n)).reduce((n,o)=>(n[o]=n[o]||this.initDataset(t.range,0),n[o][r]=i[o],this.counters[o]=(this.counters[o]||0)+i[o],this.counters.total+=i[o],n),a):a},{});return{datasets:Object.keys(e).map(a=>{const r=e[a],i=this.getColor(a),n=this.getColor(a,{l:85});return{fill:this.stacked?"origin":!1,backgroundColor:n,borderColor:i,pointHoverBackgroundColor:n,pointBorderColor:i,data:Object.keys(r).map(o=>({x:o,y:r[o]})),label:a,lineTension:0,borderWidth:1.2,pointBorderWidth:1.2,borderJoinStyle:"round"}}).sort((a,r)=>a.label.localeCompare(r.label)),labels:t.labels}}function D(){if(this.rawData&&this.rawData.stats&&this.rawData.stats.cluster){const t=this.rawData.stats.cluster;return Object.entries(t).reduce((e,[s,a])=>(e[s]=Object.entries(a).reduce((r,[i,n])=>(n&&(r[i]=n),r),{}),e),{})}return!1}function S(){return this.rawData&&this.rawData.meta?this.rawData.meta:{}}function $(){return this.toCommaNumberStr(this.counters.total)}function F(){return Object.keys(this.stats)}function m(t){return t.map(e=>Object.values(e).reduce((s,a)=>s+a,0)).reduce((e,s)=>e+s,0)}function g(t){return t.map(e=>(e["4xx"]||0)+(e["5xx"]||0)).filter(Number).reduce((e,s)=>e+s,0)}function x(t,e){return e/t*100}function V(t){const{stats:{cluster:e}}=t,s=e?m(Object.values(e)):null,a=e?g(Object.values(e)):null,r=x(s,a);return{totalRequests:s,totalErrors:a,errorRate:isNaN(r)?0+"%":r.toFixed(2)+"%"}}export{c as A,y as B,N as a,j as b,v as c,b as d,V as e,$ as f,T as g,B as h,P as i,m as j,g as k,x as l,S as m,p as n,R as o,I as p,w as q,C as r,D as s,F as t,H as u,q as v,h as w,O as x,M as y,k as z};
