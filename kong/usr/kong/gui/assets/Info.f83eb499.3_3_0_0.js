/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{_ as w,o as a,c as o,R as C,U as k,a as s,t as c,V as v,p as x,e as D,H as le,z as I,Q as re,Z as de,m as ce,n as pe,r as m,b as f,w as g,l as O,h as ue,d as y,__tla as me}from"./index.84d84090.3_3_0_0.js";import{__tla as fe}from"./monaco-editor.90904fcf.3_3_0_0.js";let P,ge=Promise.all([(()=>{try{return me}catch{}})(),(()=>{try{return fe}catch{}})()]).then(async()=>{const S={name:"InfoBlock",props:{items:{type:Array,required:!0}},data(){return{isOpen:!1}},computed:{openClass(){return this.isOpen?"open":"closed"},titleText(){return`${this.isOpen?"Hide":"View"} Full Configuration`}},methods:{handleOpen(){this.isOpen=!this.isOpen}}},K=e=>(x("data-v-3a37b65b"),e=e(),D(),e),L=K(()=>s("div",{class:"col-12"},[s("hr")],-1)),N={class:"col-12 col-md-4 config-title"},T={key:0,class:"config-details-dropdown-wrapper","data-testid":"config-details-dropdown-wrapper"},A={class:"material-icons"},E={class:"col-12 col-md-4 config-name"},H={class:"col-12 col-md-8 font-mono config-value"},V={class:"col-12 col-md-4 config-name"},B={class:"col-12 col-md-8 font-mono config-value"};function M(e,l,r,h,p,t){return a(),o("div",null,[(a(!0),o(C,null,k(r.items,(i,u)=>(a(),o("div",{key:u,class:"info-row row"},[L,s("div",N,[s("h4",null,c(i.name),1)]),s("div",{class:v([i.name,"col-12 col-md-8 config-details"])},[i.name==="Config Details"?(a(),o("div",T,[s("div",{class:"config-details-title",onClick:l[0]||(l[0]=(...n)=>t.handleOpen&&t.handleOpen(...n))},[s("i",A,c(p.isOpen?"keyboard_arrow_up":"keyboard_arrow_right"),1),s("span",null,c(t.titleText),1)]),s("div",{class:v([t.openClass,"config-details-dropdown"])},[(a(!0),o(C,null,k(i.items,(n,_,d)=>(a(),o("div",{key:d,class:v([d%2===0?"even":"odd","row mb-2"])},[s("div",E,[s("strong",null,c(_),1)]),s("div",H,c(n.value),1)],2))),128))],2)])):(a(!0),o(C,{key:1},k(i.items,(n,_,d)=>(a(),o("div",{key:d,class:v([d%2===0?"even":"odd","row mb-2"])},[s("div",V,[s("strong",null,c(n.display),1)]),s("div",B,c(n.value),1)],2))),128))],2)]))),128))])}const U=w(S,[["render",M],["__scopeId","data-v-3a37b65b"]]),j={name:"KMInfo",components:{PageHeader:le,InfoBlock:U},data(){return{error:"Error: Node details could not be loaded, are unavailable or restricted.",admin_version:this.$config.version}},computed:{...I(re,["docsEnterprise"]),...I(de,{config:"infoConfig",datastore:"infoDatastore",license:"infoLicense"}),kongVersion(){return this.config&&this.config.node.version},infoData(){return this.config&&this.datastore?[{name:"Datastore",items:this.getDatastoreItems(this.datastore)},{name:"Port Details",items:this.getConfigItems(this.config)},{name:"Node Details",items:this.getNodeItems(this.config)},{name:"Config Details",items:this.getAllConfigItems(this.config)}]:null},licenseData(){return this.license?[{name:"License Details",items:this.getLicenseItems(this.license)}]:null}},methods:{...ce(pe,["notify"]),getDatastoreItems(e){return{type:{display:"Type",value:e.type||"--"},user:{display:"User",value:e.user||"--"},host:{display:"Host",value:e.host||"--"},port:{display:"Port",value:e.port||"--"},ssl:{display:"SSL",value:!!e.ssl}}},getConfigItems(e){var l,r,h,p,t,i,u,n;return{admin_port:{display:"Kong Manager Port",value:((r=(l=e.admin_gui_listeners)==null?void 0:l[0])==null?void 0:r.port)??"--"},admin_ssl_port:{display:"Kong Manager SSL Port",value:((p=(h=e.admin_gui_listeners)==null?void 0:h[1])==null?void 0:p.port)??"--"},proxy_port:{display:"Proxy Port",value:((i=(t=e.proxy_listeners)==null?void 0:t[0])==null?void 0:i.port)??"--"},proxy_ssl_port:{display:"Proxy SSL Port",value:((n=(u=e.proxy_listeners)==null?void 0:u[1])==null?void 0:n.port)??"--"}}},getNodeItems(e){return{address:{display:"Address",value:e.admin_listen&&e.admin_listen[0]||"--"},host_name:{display:"Host Name",value:e.node.hostname||"--"}}},getLicenseItems(e){return{license:{display:"Licensed To",value:e.customer},subscription:{display:"Subscription",value:e.product_subscription},admin_seats:{display:"Seats",value:e.admin_seats},support_plan:{display:"Support Plan",value:e.support_plan},creation_date:{display:"Creation Date",value:e.license_creation_date},expiration_date:{display:"Expiration Date",value:e.license_expiration_date}}},getAllConfigItems(e){return Object.keys(e).reduce((l,r)=>(l[r]={value:e[r]},l),{})},copyConfigToClipboard(e){if(!e(JSON.stringify(this.config,null,2)))return this.notify({type:"error",message:"Failed to copy id to clipboard"});this.notify({type:"success",message:"Config JSON copied to clipboard"})}}},b=e=>(x("data-v-75626a5d"),e=e(),D(),e),q={class:"container"},z={class:"row mb-6"},J={class:"col-12"},F={class:"reference-wrapper d-flex align-items-center"},R=y(" Config Reference Docs "),$=b(()=>s("i",{title:"copy to clipboard",class:"material-icons"}," content_copy ",-1)),Q=y(" Copy Config JSON "),Z={key:1,class:"mb-7 text-center"},G=b(()=>s("hr",null,null,-1)),W={class:"container-fluid text-center mt-5"},X=b(()=>s("h6",null,"End User License Agreement",-1)),Y={class:"text-muted"},ee={class:"d-flex align-items-center flex-column"},se=y(" This software is copyright Kong Inc. and its licensors. Use of the software is subject to the agreement between your organization and Kong Inc. If there is no such agreement, use is governed by and subject to the terms of the Kong Master Software License Agreement found at "),te=y(" https://konghq.com/enterprisesoftwarelicense/ "),ae=y(". ");function ie(e,l,r,h,p,t){const i=m("KExternalLink"),u=m("KButton"),n=m("KClipboardProvider"),_=m("PageHeader"),d=m("InfoBlock"),ne=m("KAlert");return a(),o("section",q,[s("div",z,[s("div",J,[f(_,{size:2},{"below-title":g(()=>[s("span",null,"Version "+c(t.kongVersion),1)]),default:g(()=>[s("div",F,[f(i,{href:e.docsEnterprise.url+"reference/configuration"},{default:g(()=>[R]),_:1},8,["href"]),f(n,null,{default:g(({copyToClipboard:oe})=>[f(u,{class:"ml-4","data-testid":"copy-to-clipboard",onClick:ye=>t.copyConfigToClipboard(oe)},{default:g(()=>[$,Q]),_:2},1032,["onClick"])]),_:1})])]),_:1})])]),t.infoData?(a(),O(d,{key:0,items:t.infoData},null,8,["items"])):(a(),o("div",Z,[f(ne,{"alert-message":p.error,appearance:"danger"},null,8,["alert-message"])])),t.licenseData?(a(),O(d,{key:2,items:t.licenseData},null,8,["items"])):ue("",!0),G,s("footer",W,[X,s("div",Y,[s("p",ee,[se,f(i,{href:"https://konghq.com/enterprisesoftwarelicense/"},{default:g(()=>[te]),_:1}),ae])])])])}P=w(j,[["render",ie],["__scopeId","data-v-75626a5d"]])});export{ge as __tla,P as default};