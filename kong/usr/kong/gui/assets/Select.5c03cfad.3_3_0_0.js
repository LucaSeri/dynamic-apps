/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{T as de,a as P,A as w,__tla as ce}from"./entities-plugins.es.44654093.3_3_0_0.js";import{_ as y,r as o,o as a,l as _,w as c,a as s,b as u,d as L,t as b,c as p,h as S,H as pe,z as x,Z as C,Q as ge,m as he,I as fe,R as v,U as O,k as me,v as be,V as ye,ab as _e,__tla as ve}from"./index.84d84090.3_3_0_0.js";import{p as g,__tla as ke}from"./PluginMeta.6ce8b2b4.3_3_0_0.js";import{__tla as Pe}from"./monaco-editor.90904fcf.3_3_0_0.js";let I,we=Promise.all([(()=>{try{return ce}catch{}})(),(()=>{try{return ve}catch{}})(),(()=>{try{return ke}catch{}})(),(()=>{try{return Pe}catch{}})()]).then(async()=>{const j={name:"PluginCardSkeleton",props:{cardCount:{type:Number,default:1,required:!1}}},M={class:"mx-auto"},R=L(" \xA0 "),K={class:"w-100"},N=s("hr",{style:{margin:"0 -1rem 1rem"}},null,-1),T={class:"d-flex justify-content-center py-2"};function U(e,t,l,i,d,n){const h=o("KSkeletonBox"),f=o("KSkeleton");return a(),_(f,{"card-count":l.cardCount,class:"k-skeleton-25",type:"card"},{"card-header":c(()=>[s("div",M,[u(h,{width:"5"})])]),"card-content":c(()=>[R]),"card-footer":c(()=>[s("div",K,[N,s("div",T,[u(h,{width:"5"})])])]),_:1},8,["card-count"])}const q=y(j,[["render",U]]),E={components:{PluginIcon:de},props:{plugin:{type:Object,required:!0}}},F={class:"card-content"},$={class:"card-title"},A={key:0,class:"card-text"},B=s("div",{class:"card-footer"}," Enable ",-1);function G(e,t,l,i,d,n){const h=o("PluginIcon"),f=o("KCard");return a(),_(f,{"data-testid":l.plugin.name,disabled:!l.plugin.available||l.plugin.disabledMessage,"border-variant":"noBorder","has-hover":""},{body:c(()=>[s("div",F,[s("h4",$,b(l.plugin.name),1),u(h,{name:l.plugin.imageName||l.plugin.id,alt:l.plugin.name,class:"card-icon",size:55},null,8,["name","alt"]),l.plugin.description?(a(),p("p",A,b(l.plugin.description),1)):S("",!0)]),B]),_:1},8,["data-testid","disabled"])}const H=y(E,[["render",G]]),V={name:"PluginsShell",components:{PageHeader:pe,PluginCard:H,PluginCardSkeleton:q},props:{createPathName:{type:String,default:"create-plugin"},disabledPlugins:{type:Object,default:()=>({})},showOnlyAvailablePlugins:{type:Boolean,default:!1}},data(){return{pluginsToIgnore:["openid-connect-authentication","openid-connect-protection","openid-connect-verification","vault-auth","konnect-application-auth","kubernetes-sidecar-injector","collector","openwhisk","upstream-tls"],pluginsList:{},pluginGroups:P,selected:null,filter:""}},computed:{...x(C,{plugins:"infoPlugins"}),...x(ge,{links:"entityDoc"}),docsLink(){return this.links("plugin")},filteredPlugins(){const e=this.pluginsList,t=this.filter.toLowerCase();return Object.keys(e).reduce((l,i)=>{const d=e[i].filter(n=>n.name.toLowerCase().includes(t)||n.group.toLowerCase().includes(t));return d.length&&(l[i]=d),l},{})},hasFilteredResults(){return Object.keys(this.filteredPlugins).length>0},noSearchResults(){return Object.keys(this.pluginsList).length>0&&!this.hasFilteredResults}},mounted(){this.getInfo().then(()=>{this.pluginsList=this.buildPluginList()})},methods:{...he(C,["getInfo"]),buildPluginList(){return[...new Set(Object.keys({...!this.showOnlyAvailablePlugins&&g,...this.plugins.available}))].filter(e=>!this.pluginsToIgnore.includes(e)).filter(e=>{var l;const t=this.$route.query.entity_type;return t?t==="route_id"&&g[e]&&!g[e].scope.includes(w.ROUTE)?!1:(((l=g[e])==null?void 0:l.scope.includes(w.CONSUMER))??!0)||!["consumer_id","developer_id"].includes(t)?e:!1:e}).reduce((e,t)=>{const l=g[t]&&g[t].name||t,i={id:t,name:l,available:this.plugins.available[t]!==void 0,disabledMessage:this.disabledPlugins[t],group:g[t]&&g[t].group||P.CUSTOM_PLUGINS,...g[t]};return e[i.group]||(e[i.group||"Other Plugins"]=[]),e[i.group||"Other Plugins"].push(i),e[i.group].sort(fe("name")),e},{})}}},z={class:"plugins-shell-wrapper"},D={class:"plugins-shell"},Q={class:"d-flex flex-column"},Z=L(" View documentation "),J={key:0,"aria-live":"polite"},W={class:"col"},X={class:"row mt-4"},Y={style:{"max-width":"345px"}},ee={key:1},te={class:"row","data-testid":"no-results"},le={class:"col-12 text-center"},se={key:2};function ae(e,t,l,i,d,n){const h=o("KExternalLink"),f=o("PageHeader"),ie=o("PluginCard"),k=o("KSkeletonBox"),ne=o("KSkeleton"),re=o("PluginCardSkeleton");return a(),p("div",z,[s("div",D,[u(f,{title:"Install Plugin"},{default:c(()=>[s("div",Q,[u(h,{href:n.docsLink,class:"justify-content-end"},{default:c(()=>[Z]),_:1},8,["href"]),me(s("input",{"onUpdate:modelValue":t[0]||(t[0]=m=>d.filter=m),class:"k-input mt-3",type:"search",placeholder:"Filter Plugins","data-testid":"plugins-filter"},null,512),[[be,d.filter]])])]),_:1}),n.hasFilteredResults?(a(),p("section",J,[(a(!0),p(v,null,O(d.pluginGroups,(m,oe)=>(a(),p(v,null,[n.filteredPlugins[m]?(a(),p("div",{key:oe,class:"row"},[s("div",W,[s("h5",null,b(m),1),s("div",X,[(a(!0),p(v,null,O(n.filteredPlugins[m],(r,ue)=>(a(),_(_e(r.disabledMessage?"KTooltip":r.available?"router-link":"div"),{key:ue,title:r.available?r.name:"This plugin is not available",label:r.disabledMessage,to:{name:l.createPathName,params:{plugin:r.id,fields:e.$route.params.fields,returnLink:e.$route.params.returnLink},query:{...e.$route.query}},class:ye([!r.available||r.disabledMessage?"disabled":"","plugin-card col-6 col-lg-4 col-xl-4"])},{content:c(()=>[s("div",Y,b(r.disabledMessage),1)]),default:c(()=>[u(ie,{plugin:r},null,8,["plugin"])]),_:2},1032,["title","label","to","class"]))),128))])])])):S("",!0)],64))),256))])):n.noSearchResults?(a(),p("section",ee,[s("div",te,[s("div",le,[s("h4",null,'No results found for "'+b(d.filter)+'"',1)])])])):(a(),p("div",se,[u(ne,{"table-rows":1,type:"table"},{default:c(()=>[u(k,{width:"6"}),u(k,{class:"ml-4",width:"6"})]),_:1}),u(re,{"card-count":8,type:"card"})]))])])}I=y(V,[["render",ae],["__scopeId","data-v-1483f313"]])});export{we as __tla,I as default};