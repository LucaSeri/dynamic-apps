/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{ag as W,aw as Gt,B as S,C as x,ak as ye,ax as Pe,r as $,o as V,c as O,b as u,O as fe,ay as o,w as n,d as M,t as A,k as ee,ah as te,a as U,i as me,l as H,R as Ie,U as he,F as Ht,G as Q,h as ae,az as xe,aA as Ee,aB as zt,Q as Wt,n as Jt,aC as Qt,q as Xt,H as Yt,y as Zt,aD as ea,S as ta,__tla as aa}from"./index.84d84090.3_3_0_0.js";import{u as la,a as ra,b as le,__tla as oa}from"./useRbacPermission.15766885.3_3_0_0.js";import{u as sa,__tla as ia}from"./useRedirect.ccdc1330.3_3_0_0.js";import{__tla as na}from"./monaco-editor.90904fcf.3_3_0_0.js";let Ke,ca=Promise.all([(()=>{try{return aa}catch{}})(),(()=>{try{return oa}catch{}})(),(()=>{try{return ia}catch{}})(),(()=>{try{return na}catch{}})()]).then(async()=>{const Re={create:"New Gateway Service",copy_id:"Copy ID",copy_json:"Copy JSON",edit:"Edit",clear:"Clear",view:"View Details",enable:{enabled_label:"Enabled",disabled_label:"Disabled"},delete:{title:"Delete a Gateway Service",description:"Deleting this Gateway Service will also remove any associated routes and plugins. This action cannot be reversed.",menu_label:"Delete"}},$e={placeholder:"Filter by exact name or ID"},Ve={title:"Gateway Services",list:{toolbar_actions:{new_gateway_service:"New Gateway Service"},table_headers:{name:"Name",protocol:"Protocol",host:"Host",port:"Port",path:"Path",enabled:"Enabled",tags:"Tags",id:"ID"},empty_state:{title:"Configure a New Gateway Service",description:"Gateway services are used to proxy traffic."}},form:{sections:{general:{title:"General Information",description:"General information will help identify and manage this Gateway Service."},keys:{title:"Service Endpoint",description:"Define the endpoint for this service by specifying the full URL or by its separate elements.",checkedGroupLabel:"Choose how and where to send traffic *",urlLabel:"Upstream URL *",checkedGroupAltLabel:"Protocol, Host, Port and Path",viewAdvancedFields:"View Advanced Fields"}},fields:{upstream_url:{placeholder:"Enter a URL",tooltip:"This is the URL of the API you will manage in Konnect"},name:{label:"Name",placeholder:"Enter a unique name",tooltip:"The Service name"},protocol:{label:"Protocol",tooltip:"The protocol used to communicate with the upstream",options:{http:"http",https:"https",tcp:"tcp",tls:"tls",tls_passthrough:"tls_passthrough",grpc:"grpc",grpcs:"grpcs",ws:"ws",wss:"wss",udp:"udp"}},host:{label:"Host",placeholder:"Enter a host",tooltip:"The host of the upstream server. Note that the host value is case sensitive."},path:{label:"Path",placeholder:"Enter a path",tooltip:"The path to be used in request to the upstream server"},port:{label:"Port",tooltip:"The upstream server port"},retries:{label:"Retries",tooltip:"The number of retries to execute upon failure to proxy"},connect_timeout:{label:"Connection Timeout",tooltip:"The timeout in milliseconds for establishing a connection to the upstream server"},write_timeout:{label:"Write Timeout",tooltip:"The timeout in milliseconds between two successive write operations for transmitting a request to the upstream server"},read_timeout:{label:"Read Timeout",tooltip:"The timeout in milliseconds between two successive read operations for transmitting a request to the upstream server"},client_certificate:{label:"Client Certificate",placeholder:"Enter a Certificate ID",tooltip:"Certificate to be used as client certificate while TLS handshaking to the upstream server"},ca_certificates:{label:"CA Certificate",placeholder:"Enter a comma separated list of CA Certificate IDs",tooltip:"Array of CA Certificate object UUIDs that are used to build the trust store while verifying upstream server's TLS certificate. If set to null when Nginx default is respected. If default CA list in Nginx are not specified and TLS verification is enabled, then handshake with upstream server will always fail (because no CA are trusted)"},tls_verify_enabled:{label:"TLS Verify",help:"If unchecked, use default system setting"},tlsVerifyTrueOption:{label:"True"},tlsVerifyFalseOption:{label:"False"},tags:{label:"Tags",tooltip:"An optional set of strings associated with the Service for grouping and filtering",placeholder:"Enter a list of tags seperated by comma",help:"e.g. tag1, tag2, tag3"}}}},Ae={general:"Gateway Services could not be retrieved",delete:"The gateway service could not be deleted at this time.",copy:"Failed to copy to clipboard",urlErrorMessage:"Error: invalid URL",validationNameError:"The name can be any string containing letters, numbers, or the following characters: ., -, _, or ~. Do not use spaces."},Ue={success:"Copied {val} to clipboard",success_brief:"Successfully copied to clipboard"},qe={gateway_services:"gateway services"},Me={actions:Re,search:$e,gateway_services:Ve,errors:Ae,copy:Ue,glossary:qe};function Le(){const e=xe("en-us",Me);return{i18n:e,i18nT:Ee(e)}}function Be(){return{getPortFromProtocol:(e,l)=>{const a=[80,443],t=Number(l);if(t&&!a.includes(t))return t;switch(e){case"grpcs":case"tls":case"https":case"wss":return 443;case"grpc":case"tcp":case"http":case"ws":default:return 80}}}}const Fe={useI18n:Le,usePortFromProtocol:Be},Ne={list:{konnect:{all:"/api/runtime_groups/{controlPlaneId}/services"},kongManager:{all:"/{workspace}/services"}},form:{konnect:{create:"/api/runtime_groups/{controlPlaneId}/services",validate:"/api/runtime_groups/{controlPlaneId}/v1/schemas/json/service/validate",edit:"/api/runtime_groups/{controlPlaneId}/services/{id}"},kongManager:{create:"/{workspace}/services",validate:"/{workspace}/schemas/services/validate",edit:"/{workspace}/services/{id}"}}};function re(e={}){return{axiosInstance:zt.create({withCredentials:!0,timeout:3e4,...e})}}function Oe(e,l){const a=o(l),t=x(()=>e.apiBaseUrl.startsWith("/")?new URL(`${window.location.origin}${a}`):new URL(a));return t.value.search="",r=>`${t.value.href}/${r}`}const je={message:"Are you sure you want to delete this {entityType}?",messageWithName:"Are you sure you want to delete this {entityType} {entityName}?"},De={actions:{save:"Save",cancel:"Cancel",back:"Back"},errors:{edit:"The entity could not be edited at this time."}},Ge={emptyState:{noSearchResultsTitle:"No results found",noSearchResultsMessage:"Please adjust the criteria and try again.",noSearchResultsCtaText:"Clear"}},He={filterButtonText:"Filter",fieldLabel:"Filter by:",inputPlaceholder:"Enter a value",selectPlaceholder:"Select an item",applyButtonText:"Apply",clearButtonText:"Clear",clearAllButtonText:"Clear all filters"},ze={errors:{fetch:"Could not fetch available items",invalid:"Please select a valid value"}},We={unexpected:"An unexpected error has occurred"},Je={enable:{title:"Enable {entityType}",message:"Are you sure you want to enable the {entityType} {entityName}?",confirmText:"Yes, enable"},disable:{title:"Disable {entityType}",message:"Are you sure you want to disable the {entityType} {entityName}?",confirmText:"Yes, disable"}},Qe={deleteModal:je,baseForm:De,baseTable:Ge,filter:He,debouncedFilter:ze,errors:We,toggleModal:Je};function oe(){const e=xe("en-us",Qe);return{i18n:e,i18nT:Ee(e)}}function Xe(){const{i18n:{t:e}}=oe();return{getMessageFromError:l=>{var a,t,r;if(!l)return e("errors.unexpected");if((a=l==null?void 0:l.response)!=null&&a.data){if(l.response.data.detail)return l.response.data.detail;if((t=l.response.data.details)!=null&&t.length)return l.response.data.details.map(s=>{let h=e("errors.unexpected");return s.messages&&typeof s.messages=="object"&&s.messages.length&&(h=s.messages.join(", ")),s.field?`${s.field} - ${h}`:h}).join("; ");if(l.response.data.message){const{message:s}=l.response.data;return Array.isArray(s)?(r=s[0])!=null&&r.constraints?Object.values(s[0].constraints)[0]:s[0]:s}if(typeof l.response.data=="string")return l.response.data;if(typeof l.response.data=="object")return Object.keys(l.response.data).map(s=>`${s} ${l.response.data[s]}`).join(", ")}return l.message||e("errors.unexpected")}}}function ve(e,l){const a=S(o(e)),t=S(o(l)),r=x(()=>!!(a.value.app==="konnect"||a.value.isExactMatch)),s=x(()=>t.value.startsWith("/")?new URL(`${window.location.origin}${t.value}`):new URL(t.value));return h=>{const{page:P,pageSize:v,offset:f,sortColumnKey:g,sortColumnOrder:b,query:C}=h;try{let I=new URL(s.value.href);return r.value&&C?(I.search="",I=new URL(`${I.href}/${C}/`)):(r.value||new URLSearchParams(C).forEach((E,d)=>{I.searchParams.append(d,E)}),g&&I.searchParams.append("sort_by",g),b==="desc"&&I.searchParams.append("sort_desc","1"),I.searchParams.append("size",String(v))),f&&P!==1&&I.searchParams.append("offset",String(f)),I.href}catch(I){return console.error("RouteList(fetcher)",I),t.value}}}function Ye(){return{debounce:(e,l)=>{let a;return(...t)=>{clearTimeout(a),a=window==null?void 0:window.setTimeout(()=>{e(...t)},l)}}}}const se="khcp-user-table-preferences",Ze={pageSize:30,sortColumnKey:void 0,sortColumnOrder:void 0};function et(){const e=a=>{if(typeof a=="string")try{return JSON.parse(a)}catch(t){console.error("useTablePreferences(tryParseJson)",t);return}},l=()=>{const a=e(localStorage.getItem(se));return!a||!Object.keys(a).length?new Map:new Map(Object.entries(a))};return{setTablePreferences:(a,t)=>{try{const r=l();r.set(a,t),localStorage.setItem(se,JSON.stringify(Object.fromEntries(r.entries())))}catch(r){console.error("useTablePreferences(setTablePreferences)",r)}},getTablePreferences:a=>{const t=l();return(t==null?void 0:t.get(a))||void 0||Ze},deleteAllTablePreferences:()=>{localStorage.removeItem(se)}}}function tt(e,l,a,t={fetchedItemsKey:"data",searchKeys:["id"]}){a||(a="100");const{axiosInstance:r}=re({headers:e.requestHeaders}),{i18n:{t:s}}=oe(),{debounce:h}=Ye(),P=h(async c=>{await y(c)},200),v=S(!1),f=S(""),g=S(""),b=S([]),C=S(void 0),I=o(l);let E=`${e.apiBaseUrl}${I}`;e.app==="konnect"?E=E.replace(/{controlPlaneId}/gi,(e==null?void 0:e.controlPlaneId)||""):e.app==="kongManager"&&(E=E.replace(/{workspace}/gi,(e==null?void 0:e.workspace)||""));const d=async()=>{try{v.value=!0;const{data:c}=await r.get(`${E}?size=${a}`);c!=null&&c.next||(C.value=t.fetchedItemsKey in c?c[t.fetchedItemsKey]:[]),b.value=t.fetchedItemsKey in c?c[t.fetchedItemsKey]:[]}catch{b.value=[],f.value=s("debouncedFilter.errors.fetch")}finally{v.value=!1}},p=S(""),y=async c=>{var K,F;if(p.value!==c)if(p.value=c||"",C.value===void 0)try{v.value=!0,f.value="",g.value="";let R=E+"";c&&(R+=`/${c}`);const{data:m}=await r.get(`${R}?size=${a}`);t.fetchedItemsKey in m?b.value=m[t.fetchedItemsKey]:m!=null&&m.id?b.value=[m]:b.value=[]}catch(R){((K=R==null?void 0:R.response)==null?void 0:K.status)===404?g.value=s("debouncedFilter.errors.invalid"):(b.value=[],f.value=s("debouncedFilter.errors.fetch"))}finally{v.value=!1}else v.value=!0,g.value="",c?(b.value=(F=C.value)==null?void 0:F.filter(R=>{var m;let w=!1;for(const L of t.searchKeys){const N=typeof R[L]=="string"?(m=R[L])==null?void 0:m.toLowerCase():R[L];N!=null&&N.includes(c.toLowerCase())&&(w=!0)}return w}),(!b.value||!b.value.length)&&(g.value=s("debouncedFilter.errors.invalid"))):b.value=C.value,v.value=!1};return{loading:v,error:f,validationError:g,results:b,allRecords:C,loadItems:d,debouncedQueryChange:P}}var ge=(e=>(e.GatewayService="service",e.Route="route",e.Consumer="consumer",e.ConsumerGroup="consumer group",e.Plugin="plugin",e.Upstream="upstream",e.Certificate="certificate",e.CACertificate="ca certificate",e.SNI="SNI",e.Key="key",e.KeySet="key set",e.Vault="vault",e.Application="application",e.Developer="developer",e.acls="ACL Credential",e["basic-auth"]="Basic Auth Credential",e["key-auth"]="Key Auth Credential",e["key-auth-enc"]="Key Auth Encrypted Credential",e.oauth2="OAuth 2.0 Credential",e["hmac-auth"]="HMAC Credential",e.jwt="JWT Credential",e.Target="target",e))(ge||{}),j=(e=>(e[e.Loading=0]="Loading",e[e.Idle=1]="Idle",e[e.NoResults=2]="NoResults",e[e.Error=3]="Error",e))(j||{});function at(e,l,a="data"){const t=o(l),{axiosInstance:r}=re({headers:e.requestHeaders}),s=ve(e,t),h=S({status:j.Idle});return{fetcher:async P=>{try{h.value={status:j.Loading};const v=s(P),{data:f}=await r.get(v),g=a&&a.replace(/[^\w-_]/gi,"");let b;f[g]&&Array.isArray(f[g])?b=f[g]:b=Object.keys(f).length?[f]:[];const C={data:b,total:b.length,...f.offset?{pagination:{offset:f.offset}}:null};return h.value={status:j.Idle,response:C},C}catch(v){const f={data:[],total:0};return P.query&&v.response.status===404?(h.value={status:j.NoResults,response:f,error:v},f):(h.value={status:j.Error,response:f,error:v},f)}},fetcherState:h}}const X={useAxios:re,useDeleteUrlBuilder:Oe,useErrors:Xe,useFetchUrlBuilder:ve,useDebouncedFilter:tt,useFetcher:at,useI18n:oe},ie=(e,l)=>{const a=e.__vccOpts||e;for(const[t,r]of l)a[t]=r;return a},lt={class:"toolbar-container"},rt={key:0,class:"toolbar-button-container"},ot=["data-testid"],st=W({__name:"EntityBaseTable",props:{tableHeaders:{type:Object,required:!0,default:()=>({})},fetcher:{type:Function,required:!0,default:async()=>({data:[],total:0})},initialFetcherParams:{type:Object,default:null},fetcherCacheKey:{type:Number,default:1},isLoading:{type:Boolean,default:!1},query:{type:String,default:""},enableClientSort:{type:Boolean,default:!1},enableEntityActions:{type:Boolean,default:!0},emptyStateOptions:{type:Object,default:()=>({})},errorMessage:{type:String,default:""},disablePaginationPageJump:{type:Boolean,default:void 0},disableSorting:{type:Boolean,default:void 0},paginationType:{type:String,default:void 0},cellAttributes:{type:Function,default:()=>({})},rowAttributes:{type:Function,default:()=>({})},preferencesStorageKey:{type:String,default:"",required:!0},dropdownMenuWidth:{type:String,default:"",required:!1}},emits:["click:row","sort","clear-search-input","empty-state-cta-clicked"],setup(e,{emit:l}){const a=e,{i18n:{t}}=X.useI18n(),r=x(()=>{const d=[];return Object.keys(a.tableHeaders).forEach(p=>{const y=a.tableHeaders[p];d.push({label:y.label??p,key:p,sortable:y.sortable??!1})}),a.enableEntityActions&&d.push({key:"actions",hideLabel:!0}),d}),s=d=>({"data-rowid":d.id,"data-testid":d.name,...a.rowAttributes(d)}),h=d=>({"data-testid":d.headerKey,...a.cellAttributes(d)}),P=()=>{l("empty-state-cta-clicked"),v()},v=()=>{l("clear-search-input")},f=(d,p)=>{l("click:row",p)},g=d=>{l("sort",d)},{setTablePreferences:b,getTablePreferences:C}=et(),I=x(()=>{const d=C(a.preferencesStorageKey);return{...a.initialFetcherParams,...d}}),E=d=>{a.preferencesStorageKey&&b(a.preferencesStorageKey,d)};return(d,p)=>{const y=$("KIcon"),c=$("KButton"),K=$("KDropdownMenu"),F=$("KTable"),R=$("KCard");return V(),H(R,{class:"kong-ui-entity-base-table"},{body:n(()=>[u(F,{"cell-attrs":h,"disable-pagination-page-jump":e.disablePaginationPageJump,"disable-sorting":e.disableSorting,"empty-state-action-button-icon":e.query?"":"plus","empty-state-action-message":e.query?o(t)("baseTable.emptyState.noSearchResultsCtaText"):e.emptyStateOptions.ctaText,"empty-state-action-route":e.query?"":e.emptyStateOptions.ctaPath,"empty-state-icon":e.query?"stateNoSearchResults":"stateGruceo","empty-state-icon-size":"96","empty-state-message":e.query?o(t)("baseTable.emptyState.noSearchResultsMessage"):e.emptyStateOptions.message,"empty-state-title":e.query?o(t)("baseTable.emptyState.noSearchResultsTitle"):e.emptyStateOptions.title,"enable-client-sort":e.enableClientSort,"error-state-title":e.errorMessage,fetcher:e.fetcher,"fetcher-cache-key":String(e.fetcherCacheKey),"has-error":!!e.errorMessage,headers:o(r),"hide-pagination-when-optional":"","initial-fetcher-params":o(I),"is-loading":e.isLoading,"pagination-type":e.paginationType,"row-attrs":s,"search-input":e.query,onKtableEmptyStateCtaClicked:P,"onRow:click":f,onSort:g,"onUpdate:tablePreferences":E},fe({toolbar:n(()=>[U("div",lt,[Q(d.$slots,"toolbar-filter",{},void 0,!0),d.$slots["toolbar-button"]?(V(),O("div",rt,[Q(d.$slots,"toolbar-button",{},void 0,!0)])):ae("",!0)])]),actions:n(({row:m,rowKey:w,rowValue:L})=>[U("div",{class:"actions-container","data-testid":m.name},[u(K,{"kpop-attributes":{placement:"bottomEnd"},width:e.dropdownMenuWidth},{items:n(()=>[Q(d.$slots,"actions",{row:m,rowKey:w,rowValue:L},void 0,!0)]),default:n(()=>[u(c,{class:"non-visual-button","data-testid":"overflow-actions-button",size:"small"},{icon:n(()=>[u(y,{color:"var(--black-400, #3c4557)",icon:"more",size:"16"})]),_:1})]),_:2},1032,["width"])],8,ot)]),_:2},[he(e.tableHeaders,(m,w)=>({name:w,fn:n(({row:L,rowKey:N,rowValue:q})=>[Q(d.$slots,w,{row:L,rowKey:N,rowValue:q},void 0,!0)])}))]),1032,["disable-pagination-page-jump","disable-sorting","empty-state-action-button-icon","empty-state-action-message","empty-state-action-route","empty-state-icon","empty-state-message","empty-state-title","enable-client-sort","error-state-title","fetcher","fetcher-cache-key","has-error","headers","initial-fetcher-params","is-loading","pagination-type","search-input"])]),_:3})}}}),it=ie(st,[["__scopeId","data-v-6eab8cd1"]]),nt={key:0,class:"kong-ui-entity-delete-error"},ct={key:1,class:"description"},ut=W({__name:"EntityDeleteModal",props:{visible:{type:Boolean,required:!0,default:!1},title:{type:String,default:"Delete"},entityType:{type:String,required:!0},entityName:{type:String,default:""},needConfirm:{type:Boolean,default:!0},description:{type:String,default:""},actionPending:{type:Boolean,default:!1},error:{type:String,default:""}},emits:["cancel","proceed"],setup(e,{emit:l}){const a=e,{i18nT:t}=X.useI18n(),r=x(()=>a.needConfirm?a.entityName:""),s=()=>{l("cancel")},h=()=>{l("proceed")};return(P,v)=>{const f=$("KAlert"),g=$("KPrompt");return V(),H(g,{"action-button-text":"Yes, delete","action-pending":e.actionPending,class:"kong-ui-entity-delete-modal","confirmation-text":o(r),"is-visible":e.visible,title:e.title,type:"danger",onCanceled:s,onProceed:h},{"body-content":n(()=>[e.error?(V(),O("div",nt,[u(f,{appearance:"danger"},{alertMessage:n(()=>[M(A(e.error),1)]),_:1})])):ae("",!0),u(o(t),{class:"message",keypath:a.entityName?"deleteModal.messageWithName":"deleteModal.message",tag:"p"},fe({entityType:n(()=>[M(A(a.entityType),1)]),_:2},[a.entityName?{name:"entityName",fn:n(()=>[U("strong",null,A(a.entityName),1)]),key:"0"}:void 0]),1032,["keypath"]),a.description||P.$slots.description?(V(),O("div",ct,[Q(P.$slots,"description",{},()=>[U("p",null,A(a.description),1)],!0)])):ae("",!0)]),_:3},8,["action-pending","confirmation-text","is-visible","title"])}}}),dt=ie(ut,[["__scopeId","data-v-3513e33b"]]),pt={fill:"none",height:"20",viewBox:"0 0 20 20",width:"20",xmlns:"http://www.w3.org/2000/svg"},yt={id:"mask0_180_20349",height:"20",maskUnits:"userSpaceOnUse",style:{"mask-type":"alpha"},width:"20",x:"0",y:"0"},ft=["fill"],mt={mask:"url(#mask0_180_20349)"},ht=["fill"],vt=W({__name:"IconFilter",props:{color:{type:String,default:"var(--kong-ui-entity-filter-color, var(--blue-500, #1155cb))"}},setup(e){return(l,a)=>(V(),O("svg",pt,[U("mask",yt,[U("rect",{fill:e.color,height:"20",width:"20"},null,8,ft)]),U("g",mt,[U("path",{d:"M8 14.5V13H12V14.5H8ZM5 10.75V9.25H15V10.75H5ZM3 7V5.5H17V7H3Z",fill:e.color},null,8,ht)])]))}}),gt={key:1,class:"kong-ui-entity-filter"},bt={class:"menu-item-title"},wt={class:"menu-item-indicator"},_t={class:"menu-item-body"},kt=["for"],Ct={class:"menu-item-buttons"},Tt=W({__name:"EntityFilter",props:{config:{type:Object,required:!0,default:()=>({isExactMatch:!0,placeholder:""})},modelValue:{type:String,required:!0}},emits:["update:modelValue"],setup(e,{emit:l}){const a=e,{i18n:{t}}=X.useI18n(),r=S(!1),s=S({}),h=x(()=>{const p=[];return new URLSearchParams(a.modelValue).forEach((y,c)=>{y!==""&&p.push(c)}),p}),P=x(()=>{const p=a.config.fields;return Object.keys(p).filter(y=>p[y].searchable).map(y=>({label:p[y].label||y,value:y}))});ye(()=>a.modelValue,p=>{s.value={},new URLSearchParams(p).forEach((y,c)=>{s.value[c]=y})});const v=()=>{r.value=!r.value},f=p=>{l("update:modelValue",p)},g=p=>`filter-${p}`,b=p=>{var y,c;return(((c=(y=a.config.schema)==null?void 0:y[p])==null?void 0:c.values)??[]).map(K=>({value:K,label:K}))},C=p=>{var y,c;return((c=(y=a.config.schema)==null?void 0:y[p])==null?void 0:c.type)??"text"},I=p=>{s.value={...s.value,[p]:""},d()},E=()=>{s.value={},d(!0)},d=(p=!1)=>{const y=Object.keys(s.value).reduce((c,K)=>(s.value[K]&&(c[K]=`${s.value[K]}`),c),{});p&&(r.value=!1),l("update:modelValue",new URLSearchParams(y).toString())};return(p,y)=>{const c=$("KInput"),K=$("KButton"),F=$("KSelect"),R=$("KMenuItem"),m=$("KMenu");return e.config.isExactMatch?(V(),H(c,{key:0,autocomplete:"off",class:"kong-ui-entity-filter-input","data-testid":"search-input","model-value":e.modelValue,placeholder:e.config.placeholder,"onUpdate:modelValue":f},{icon:n(()=>[u(vt)]),_:1},8,["model-value","placeholder"])):(V(),O("div",gt,[u(K,{appearance:"btn-link","data-testid":"filter-button",icon:"filter",onClick:v},{default:n(()=>[M(A(o(t)("filter.filterButtonText"))+" "+A(o(h).length>0?`(${o(h).length})`:""),1)]),_:1}),ee(U("div",{class:"kong-ui-entity-filter-backdrop",onClick:v},null,512),[[te,r.value]]),ee(u(m,{class:"kong-ui-entity-filter-menu"},{body:n(()=>[(V(!0),O(Ie,null,he(o(P),(w,L)=>(V(),H(R,{key:w.value,"data-testid":w.value,expandable:"","last-menu-item":L===o(P).length-1},{itemTitle:n(()=>[U("span",bt,[M(A(w.label)+" ",1),ee(U("span",wt,null,512),[[te,o(h).includes(w.value)]])])]),itemBody:n(()=>{var N,q;return[U("div",_t,[U("label",{class:"menu-item-label",for:g(w.value)},A(o(t)("filter.fieldLabel")),9,kt),((q=(N=e.config.schema)==null?void 0:N[w.value])==null?void 0:q.type)==="select"?(V(),H(F,{key:0,id:g(w.value),modelValue:s.value[w.value],"onUpdate:modelValue":D=>s.value[w.value]=D,appearance:"select",items:b(w.value),placeholder:o(t)("filter.selectPlaceholder")},null,8,["id","modelValue","onUpdate:modelValue","items","placeholder"])):(V(),H(c,{key:1,id:g(w.value),modelValue:s.value[w.value],"onUpdate:modelValue":D=>s.value[w.value]=D,autocomplete:"off",placeholder:o(t)("filter.inputPlaceholder"),size:"small",type:C(w.value)},null,8,["id","modelValue","onUpdate:modelValue","placeholder","type"]))]),U("div",Ct,[u(K,{appearance:"btn-link","data-testid":"apply-filter",size:"small",onClick:y[0]||(y[0]=D=>d(!0))},{default:n(()=>[M(A(o(t)("filter.applyButtonText")),1)]),_:1}),u(K,{appearance:"btn-link","data-testid":"clear-filter",size:"small",onClick:D=>I(w.value)},{default:n(()=>[M(A(o(t)("filter.clearButtonText")),1)]),_:2},1032,["onClick"])])]}),_:2},1032,["data-testid","last-menu-item"]))),128))]),actionButton:n(()=>[u(K,{onClick:E},{default:n(()=>[M(A(o(t)("filter.clearAllButtonText")),1)]),_:1})]),_:1},512),[[te,r.value]])]))}}}),St=ie(Tt,[["__scopeId","data-v-fcf9a8f1"]]),Pt=W({__name:"EntityToggleModal",props:{visible:{type:Boolean,required:!0},action:{type:String,required:!0},entityId:{type:String,required:!0},entityType:{type:String,required:!0},entityName:{type:String,required:!0},onConfirm:{type:Function,required:!1,default:null}},emits:["canceled","proceed"],setup(e,{emit:l}){const a=e,{i18n:{t},i18nT:r}=X.useI18n(),s=S(!1),h=x(()=>a.action==="enable"?t("toggleModal.enable.title",{entityType:a.entityType}):t("toggleModal.disable.title",{entityType:a.entityType})),P=x(()=>a.action==="enable"?t("toggleModal.enable.confirmText"):t("toggleModal.disable.confirmText")),v=()=>l("canceled"),f=async()=>{if(a.onConfirm){s.value=!0;try{await a.onConfirm(),l("proceed")}catch(g){console.error(g)}finally{s.value=!1}}};return(g,b)=>{const C=$("KPrompt");return V(),H(Ht,{to:"body"},[u(C,{"action-button-text":o(P),"action-pending":s.value,"data-testid":`${e.entityType}-${e.entityId}-toggle-prompt`,"is-visible":e.visible,title:o(h),type:"warning",onCanceled:v,onProceed:f},{"body-content":n(()=>[u(o(r),{keypath:`toggleModal.${a.action}.message`,scope:"global"},{entityType:n(()=>[M(A(e.entityType),1)]),entityName:n(()=>[U("strong",null,A(e.entityName),1)]),_:1},8,["keypath"])]),_:1},8,["action-button-text","action-pending","data-testid","is-visible","title"])])}}}),Y=W({__name:"PermissionsWrapper",props:{authFunction:{type:Function,required:!0,default:async()=>!0},forceShow:{type:Boolean,default:!1}},setup(e){const l=e,a=S(void 0),t=x(()=>a.value===!0||a.value!==void 0&&l.forceShow===!0);return Pe(async()=>{a.value=await l.authFunction()}),(r,s)=>o(t)?Q(r.$slots,"default",{key:0,isAllowed:a.value}):ae("",!0)}}),{useAxios:It,useDeleteUrlBuilder:xt,useErrors:ua,useFetchUrlBuilder:da,useFetcher:Et,useDebouncedFilter:pa}=X,Kt={class:"kong-ui-entities-gateway-services-list"},Rt={key:1},$t=W({__name:"GatewayServiceList",props:{config:{type:Object,required:!0,validator:e=>!(!e||!["konnect","kongManager"].includes(e==null?void 0:e.app)||!e.createRoute||!e.getViewRoute||!e.getEditRoute||e.app==="kongManager"&&!e.isExactMatch&&!e.filterSchema)},canCreate:{type:Function,required:!1,default:async()=>!0},canDelete:{type:Function,required:!1,default:async()=>!0},canEdit:{type:Function,required:!1,default:async()=>!0},canRetrieve:{type:Function,required:!1,default:async()=>!0}},emits:["error","loading","copy:success","copy:error","delete:success","toggle:success"],setup(e,{emit:l}){var a;const t=e,{i18n:{t:r}}=Fe.useI18n(),s=Gt(),{axiosInstance:h}=It({headers:(a=t.config)==null?void 0:a.requestHeaders}),P=S(1),v=x(()=>t.config.app!=="kongManager"||!!t.config.disableSorting),f={name:{label:r("gateway_services.list.table_headers.name"),searchable:!0,sortable:!0},protocol:{label:r("gateway_services.list.table_headers.protocol"),searchable:!0,sortable:!0},host:{label:r("gateway_services.list.table_headers.host"),searchable:!0,sortable:!0},port:{label:r("gateway_services.list.table_headers.port"),searchable:!0,sortable:!0},path:{label:r("gateway_services.list.table_headers.path"),searchable:!0,sortable:!0},enabled:{label:r("gateway_services.list.table_headers.enabled"),searchable:!0,sortable:!0},tags:{label:r("gateway_services.list.table_headers.tags"),sortable:!1}},g=f,b=i=>({style:{maxWidth:i.headerKey==="name"?"250px":null,overflowX:i.headerKey==="name"?"hidden":null,textOverflow:i.headerKey==="name"?"ellipsis":null}}),C=x(()=>{var i,_;let T=`${t.config.apiBaseUrl}${Ne.list[t.config.app].all}`;return t.config.app==="konnect"?T=T.replace(/{controlPlaneId}/gi,((i=t.config)==null?void 0:i.controlPlaneId)||""):t.config.app==="kongManager"&&(T=T.replace(/{workspace}/gi,((_=t.config)==null?void 0:_.workspace)||"")),T}),I=x(()=>t.config.apiBaseUrl.startsWith("/")?new URL(`${window.location.origin}${C.value}`):new URL(C.value)),E=S(""),d=x(()=>{const i=t.config.app==="konnect"||t.config.isExactMatch;if(i)return{isExactMatch:i,placeholder:r("search.placeholder")};const{name:_,enabled:T,protocol:B,host:de,port:pe,path:J}=f;return{isExactMatch:i,fields:{name:_,enabled:T,protocol:B,host:de,port:pe,path:J},schema:t.config.filterSchema}}),{fetcher:p,fetcherState:y}=Et(t.config,C.value),c=()=>{E.value=""},K=()=>{P.value++},F=S(""),R=x(()=>y.value.status===j.Loading),m=x(()=>{var i;return y.value.status===j.Idle&&!!((i=y.value.response)!=null&&i.data.length)}),w=x(()=>!R.value&&(m.value||!!E.value)),L=x(()=>({ctaPath:t.config.createRoute,ctaText:ue.value?r("actions.create"):void 0,message:r("gateway_services.list.empty_state.description"),title:ue.value?r("gateway_services.list.empty_state.title"):""})),N=S(!1),q=S(null),D=x(()=>{const i={action:"disable",id:"",name:""};if(q.value){const{enabled:_,id:T,name:B}=q.value;i.action=_?"disable":"enable",i.id=T,i.name=B||T}return i}),Ut=i=>{N.value=!0,q.value=i},ke=()=>{N.value=!1,q.value=null},qt=async()=>{var i;if(!await((i=t.canEdit)==null?void 0:i.call(t,q.value))||!q.value)return;const _=`${I.value.href}/${q.value.id}`,T=!q.value.enabled;try{const{data:B}=await h.put(_,{...q.value,enabled:T});l("toggle:success",B)}catch(B){l("error",B)}q.value.enabled=T},Mt=(i,_)=>{const T=i.id;if(!_(T)){l("copy:error",{entity:i,field:"id",message:r("errors.copy")});return}l("copy:success",{entity:i,field:"id",message:r("copy.success",{val:T})})},Lt=(i,_)=>{const T=JSON.stringify(i);if(!_(T)){l("copy:error",{entity:i,message:r("errors.copy")});return}l("copy:success",{entity:i,message:r("copy.success_brief")})},Bt=async i=>{var _;await((_=t.canRetrieve)==null?void 0:_.call(t,i))&&s.push(t.config.getViewRoute(i.id))},Ft=i=>({label:r("actions.view"),to:t.config.getViewRoute(i)}),Nt=i=>({label:r("actions.edit"),to:t.config.getEditRoute(i)}),z=S(void 0),ne=S(!1),ce=S(!1),Ce=S(""),Ot=xt(t.config,C.value),jt=i=>{z.value=i,ne.value=!0},Te=()=>{ne.value=!1,z.value=void 0},Dt=async()=>{var i,_,T;if((i=z.value)!=null&&i.id){ce.value=!0;try{await h.delete(Ot(z.value.id)),l("delete:success",z.value),Te(),P.value++}catch(B){Ce.value=((T=(_=B.response)==null?void 0:_.data)==null?void 0:T.message)||B.message||r("errors.delete"),l("error",B)}finally{ce.value=!1}}};ye(R,i=>{l("loading",i)},{immediate:!0}),ye(y,i=>{if(i.status===j.Error){F.value=r("errors.general"),l("error",i.error);return}F.value=""});const ue=S(!1);return Pe(async()=>{ue.value=await t.canCreate()}),(i,_)=>{const T=$("KButton"),B=$("KInputSwitch"),de=$("KBadge"),pe=$("KTruncate"),J=$("KDropdownItem"),Se=$("KClipboardProvider");return V(),O("div",Kt,[u(o(it),{"cell-attributes":b,"disable-pagination-page-jump":"","disable-sorting":o(v),"empty-state-options":o(L),"enable-entity-actions":"","error-message":F.value,fetcher:o(p),"fetcher-cache-key":P.value,"is-loading":o(R),"pagination-type":"offset","preferences-storage-key":"kong-ui-entities-gateway-services-list",query:E.value,"table-headers":o(g),onClearSearchInput:c,"onClick:row":_[3]||(_[3]=k=>Bt(k)),onSort:K},fe({"toolbar-filter":n(()=>[ee(u(o(St),{modelValue:E.value,"onUpdate:modelValue":_[0]||(_[0]=k=>E.value=k),config:o(d)},null,8,["modelValue","config"]),[[te,o(w)]])]),name:n(({rowValue:k})=>[U("b",null,A(k??"-"),1)]),enabled:n(({row:k})=>[u(o(Y),{"auth-function":()=>e.canEdit(k),"force-show":""},{default:n(({isAllowed:G})=>[U("div",{onClick:_[1]||(_[1]=me(()=>{},["stop"]))},[u(B,{modelValue:k.enabled,"onUpdate:modelValue":Z=>k.enabled=Z,class:"mb-0","data-testid":`row-${k.id}-toggle-input`,disabled:!G,label:k.enabled?o(r)("actions.enable.enabled_label"):o(r)("actions.enable.disabled_label"),onClick:me(Z=>Ut(k),["prevent"])},null,8,["modelValue","onUpdate:modelValue","data-testid","disabled","label","onClick"])])]),_:2},1032,["auth-function"])]),tags:n(({rowValue:k})=>[(k==null?void 0:k.length)>0?(V(),H(pe,{key:0},{default:n(()=>[(V(!0),O(Ie,null,he(k,G=>(V(),H(de,{key:G,onClick:_[2]||(_[2]=me(()=>{},["stop"]))},{default:n(()=>[M(A(G),1)]),_:2},1024))),128))]),_:2},1024)):(V(),O("span",Rt,"-"))]),actions:n(({row:k})=>[u(Se,null,{default:n(({copyToClipboard:G})=>[u(J,{"data-testid":"action-entity-copy-id",onClick:Z=>Mt(k,G)},{default:n(()=>[M(A(o(r)("actions.copy_id")),1)]),_:2},1032,["onClick"])]),_:2},1024),u(Se,null,{default:n(({copyToClipboard:G})=>[u(J,{"data-testid":"action-entity-copy-json",onClick:Z=>Lt(k,G)},{default:n(()=>[M(A(o(r)("actions.copy_json")),1)]),_:2},1032,["onClick"])]),_:2},1024),u(o(Y),{"auth-function":()=>e.canRetrieve(k)},{default:n(()=>[u(J,{"data-testid":"action-entity-view","has-divider":"",item:Ft(k.id)},null,8,["item"])]),_:2},1032,["auth-function"]),u(o(Y),{"auth-function":()=>e.canEdit(k)},{default:n(()=>[u(J,{"data-testid":"action-entity-edit",item:Nt(k.id)},null,8,["item"])]),_:2},1032,["auth-function"]),u(o(Y),{"auth-function":()=>e.canDelete(k)},{default:n(()=>[u(J,{"data-testid":"action-entity-delete","has-divider":"","is-dangerous":"",onClick:G=>jt(k)},{default:n(()=>[M(A(o(r)("actions.delete.menu_label")),1)]),_:2},1032,["onClick"])]),_:2},1032,["auth-function"])]),_:2},[o(w)?{name:"toolbar-button",fn:n(()=>[u(o(Y),{"auth-function":()=>e.canCreate()},{default:n(()=>[u(T,{appearance:"primary",icon:"plus",to:e.config.createRoute},{default:n(()=>[M(A(o(r)("gateway_services.list.toolbar_actions.new_gateway_service")),1)]),_:1},8,["to"])]),_:1},8,["auth-function"])]),key:"0"}:void 0]),1032,["disable-sorting","empty-state-options","error-message","fetcher","fetcher-cache-key","is-loading","query","table-headers"]),u(o(Pt),{action:o(D).action,"entity-id":o(D).id,"entity-name":o(D).name,"entity-type":o(r)("glossary.gateway_services"),"on-confirm":qt,visible:N.value,onCanceled:ke,onProceed:ke},null,8,["action","entity-id","entity-name","entity-type","visible"]),u(o(dt),{"action-pending":ce.value,description:o(r)("actions.delete.description"),"entity-name":z.value&&(z.value.name||z.value.id),"entity-type":o(ge).GatewayService,error:Ce.value,title:o(r)("actions.delete.title"),visible:ne.value,onCancel:Te,onProceed:Dt},null,8,["action-pending","description","entity-name","entity-type","error","title","visible"])])}}}),Vt=(e,l)=>{const a=e.__vccOpts||e;for(const[t,r]of l)a[t]=r;return a},At=Vt($t,[["__scopeId","data-v-0f06dea7"]]);let be,we,_e;be={class:"services-listing"},we=M(" Gateway Service entities are abstractions of each of your own upstream services, e.g., a data transformation microservice, a billing API. "),_e=M(" Learn more "),Ke=W({__name:"List",setup(e){const l={route:"service",endpoint:"services"},a=Zt("rbac"),t=ea(),r=Wt(),s=Jt(),{entityDoc:h}=Qt(r),P=h.value(l.route),{createRedirectRouteQuery:v,createPostDeleteRouteQuery:f}=sa(),g={name:{type:"text"},protocol:{type:"select",values:["tcp","tls","udp","grpc","grpcs","http","https","ws","wss"]},host:{type:"text"},port:{type:"number"},path:{type:"text"},enabled:{type:"select",values:["true","false"]}},b=x(()=>({name:`create-${l.route}`})),C=m=>({name:`show-${l.route}`,params:{id:m}}),I=m=>({name:`update-${l.route}`,params:{workspace:t.params.workspace,id:m},query:{...v(),...f()}}),E=Xt({...la(),createRoute:b,getViewRoute:C,getEditRoute:I,filterSchema:g}),d=()=>le(a,{path:l.endpoint,action:"create"}),p=m=>le(a,{path:`${l.endpoint}/${m.id}`,action:"delete"}),y=m=>le(a,{path:`${l.endpoint}/${m.id}`,action:"update"}),c=m=>le(a,{path:`${l.endpoint}/${m.id}`,action:"read"}),{onCopySuccess:K,onCopyError:F}=ra(),R=m=>{s.notify({message:`${m.name} Gateway Service successfully deleted!`,type:"success"})};return(m,w)=>{const L=$("KExternalLink");return V(),O("section",be,[u(Yt,null,{"below-title":n(()=>[u(ta,null,{default:n(()=>[U("p",null,[we,u(L,{href:o(P)},{default:n(()=>[_e]),_:1},8,["href"])])]),_:1})]),_:1}),u(o(At),{config:E,"can-create":d,"can-delete":p,"can-edit":y,"can-retrieve":c,"onCopy:success":o(K),"onCopy:error":o(F),"onDelete:success":R},null,8,["config","onCopy:success","onCopy:error"])])}}})});export{ca as __tla,Ke as default};