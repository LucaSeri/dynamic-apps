/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{ag as D,aw as Bt,C as S,B as T,ak as ce,ax as be,r as E,o as M,c as q,b as v,O as ue,ay as n,w as i,d as K,t as V,k as ee,ah as te,a as P,l as j,R as we,U as de,i as Rt,G as J,h as ae,az as _e,aA as ke,aB as Kt,Q as At,n as Ft,aC as qt,q as Ot,H as jt,S as Ut,y as Lt,__tla as Nt}from"./index.84d84090.3_3_0_0.js";import{a as Dt,u as Ht,b as le,__tla as zt}from"./useRbacPermission.15766885.3_3_0_0.js";import{__tla as Jt}from"./monaco-editor.90904fcf.3_3_0_0.js";let Se,Wt=Promise.all([(()=>{try{return Nt}catch{}})(),(()=>{try{return zt}catch{}})(),(()=>{try{return Jt}catch{}})()]).then(async()=>{function re(e={}){return{axiosInstance:Kt.create({withCredentials:!0,timeout:3e4,...e})}}function Ce(e,l){const t=n(l),a=S(()=>e.apiBaseUrl.startsWith("/")?new URL(`${window.location.origin}${t}`):new URL(t));return a.value.search="",r=>`${a.value.href}/${r}`}const xe={message:"Are you sure you want to delete this {entityType}?",messageWithName:"Are you sure you want to delete this {entityType} {entityName}?"},Te={actions:{save:"Save",cancel:"Cancel",back:"Back"},errors:{edit:"The entity could not be edited at this time."}},Ve={emptyState:{noSearchResultsTitle:"No results found",noSearchResultsMessage:"Please adjust the criteria and try again.",noSearchResultsCtaText:"Clear"}},Pe={filterButtonText:"Filter",fieldLabel:"Filter by:",inputPlaceholder:"Enter a value",selectPlaceholder:"Select an item",applyButtonText:"Apply",clearButtonText:"Clear",clearAllButtonText:"Clear all filters"},Ee={errors:{fetch:"Could not fetch available items",invalid:"Please select a valid value"}},Me={unexpected:"An unexpected error has occurred"},$e={enable:{title:"Enable {entityType}",message:"Are you sure you want to enable the {entityType} {entityName}?",confirmText:"Yes, enable"},disable:{title:"Disable {entityType}",message:"Are you sure you want to disable the {entityType} {entityName}?",confirmText:"Yes, disable"}},Ie={deleteModal:xe,baseForm:Te,baseTable:Ve,filter:Pe,debouncedFilter:Ee,errors:Me,toggleModal:$e};function ne(){const e=_e("en-us",Ie);return{i18n:e,i18nT:ke(e)}}function Be(){const{i18n:{t:e}}=ne();return{getMessageFromError:l=>{var t,a,r;if(!l)return e("errors.unexpected");if((t=l==null?void 0:l.response)!=null&&t.data){if(l.response.data.detail)return l.response.data.detail;if((a=l.response.data.details)!=null&&a.length)return l.response.data.details.map(o=>{let h=e("errors.unexpected");return o.messages&&typeof o.messages=="object"&&o.messages.length&&(h=o.messages.join(", ")),o.field?`${o.field} - ${h}`:h}).join("; ");if(l.response.data.message){const{message:o}=l.response.data;return Array.isArray(o)?(r=o[0])!=null&&r.constraints?Object.values(o[0].constraints)[0]:o[0]:o}if(typeof l.response.data=="string")return l.response.data;if(typeof l.response.data=="object")return Object.keys(l.response.data).map(o=>`${o} ${l.response.data[o]}`).join(", ")}return l.message||e("errors.unexpected")}}}function pe(e,l){const t=T(n(e)),a=T(n(l)),r=S(()=>!!(t.value.app==="konnect"||t.value.isExactMatch)),o=S(()=>a.value.startsWith("/")?new URL(`${window.location.origin}${a.value}`):new URL(a.value));return h=>{const{page:b,pageSize:_,offset:y,sortColumnKey:f,sortColumnOrder:w,query:$}=h;try{let m=new URL(o.value.href);return r.value&&$?(m.search="",m=new URL(`${m.href}/${$}/`)):(r.value||new URLSearchParams($).forEach((F,c)=>{m.searchParams.append(c,F)}),f&&m.searchParams.append("sort_by",f),w==="desc"&&m.searchParams.append("sort_desc","1"),m.searchParams.append("size",String(_))),y&&b!==1&&m.searchParams.append("offset",String(y)),m.href}catch(m){return console.error("RouteList(fetcher)",m),a.value}}}function Re(){return{debounce:(e,l)=>{let t;return(...a)=>{clearTimeout(t),t=window==null?void 0:window.setTimeout(()=>{e(...a)},l)}}}}const se="khcp-user-table-preferences",Ke={pageSize:30,sortColumnKey:void 0,sortColumnOrder:void 0};function Ae(){const e=t=>{if(typeof t=="string")try{return JSON.parse(t)}catch(a){console.error("useTablePreferences(tryParseJson)",a);return}},l=()=>{const t=e(localStorage.getItem(se));return!t||!Object.keys(t).length?new Map:new Map(Object.entries(t))};return{setTablePreferences:(t,a)=>{try{const r=l();r.set(t,a),localStorage.setItem(se,JSON.stringify(Object.fromEntries(r.entries())))}catch(r){console.error("useTablePreferences(setTablePreferences)",r)}},getTablePreferences:t=>{const a=l();return(a==null?void 0:a.get(t))||void 0||Ke},deleteAllTablePreferences:()=>{localStorage.removeItem(se)}}}function Fe(e,l,t){t||(t="100");const{axiosInstance:a}=re({headers:e.requestHeaders}),{i18n:{t:r}}=ne(),{debounce:o}=Re(),h=o(async s=>{await d(s)},200),b=T(!1),_=T(""),y=T(""),f=T([]),w=T(void 0),$=n(l);let m=`${e.apiBaseUrl}${$}`;e.app==="konnect"?m=m.replace(/{controlPlaneId}/gi,(e==null?void 0:e.controlPlaneId)||""):e.app==="kongManager"&&(m=m.replace(/{workspace}/gi,(e==null?void 0:e.workspace)||""));const F=async()=>{try{b.value=!0;const{data:s}=await a.get(`${m}?size=${t}`);s!=null&&s.next||(w.value=s.data),s!=null&&s.data&&(f.value=s.data)}catch{f.value=[],_.value=r("debouncedFilter.errors.fetch")}finally{b.value=!1}},c=T(""),d=async s=>{var g,u;if(c.value!==s)if(c.value=s||"",w.value===void 0)try{b.value=!0,_.value="",y.value="";let I=m+"";s&&(I+=`/${s}`);const{data:B}=await a.get(`${I}?size=${t}`);B!=null&&B.data?f.value=B.data:B!=null&&B.id?f.value=[B]:f.value=[]}catch(I){((g=I==null?void 0:I.response)==null?void 0:g.status)===404?y.value=r("debouncedFilter.errors.invalid"):(f.value=[],_.value=r("debouncedFilter.errors.fetch"))}finally{b.value=!1}else b.value=!0,y.value="",s?(f.value=(u=w.value)==null?void 0:u.filter(I=>I.id.includes(s)),(!f.value||!f.value.length)&&(y.value=r("debouncedFilter.errors.invalid"))):f.value=w.value,b.value=!1};return{loading:b,error:_,validationError:y,results:f,allRecords:w,loadItems:F,debouncedQueryChange:h}}var ye=(e=>(e.GatewayService="service",e.Route="route",e.Consumer="consumer",e.ConsumerGroup="consumer group",e.Plugin="plugin",e.Upstream="upstream",e.Certificate="certificate",e.CACertificate="ca certificate",e.SNI="SNI",e.Key="key",e.KeySet="key set",e.Vault="vault",e.Application="application",e.Developer="developer",e.acls="ACL Credential",e["basic-auth"]="Basic Auth Credential",e["key-auth"]="Key Auth Credential",e["key-auth-enc"]="Key Auth Encrypted Credential",e.oauth2="OAuth 2.0 Credential",e["hmac-auth"]="HMAC Credential",e.jwt="JWT Credential",e.Target="target",e))(ye||{}),O=(e=>(e[e.Loading=0]="Loading",e[e.Idle=1]="Idle",e[e.NoResults=2]="NoResults",e[e.Error=3]="Error",e))(O||{});function qe(e,l,t="data"){const a=n(l),{axiosInstance:r}=re({headers:e.requestHeaders}),o=pe(e,a),h=T({status:O.Idle});return{fetcher:async b=>{try{h.value={status:O.Loading};const _=o(b),{data:y}=await r.get(_),f=t&&t.replace(/[^\w-_]/gi,"");let w;y[f]&&Array.isArray(y[f])?w=y[f]:w=Object.keys(y).length?[y]:[];const $={data:w,total:w.length,...y.offset?{pagination:{offset:y.offset}}:null};return h.value={status:O.Idle,response:$},$}catch(_){const y={data:[],total:0};return b.query&&_.response.status===404?(h.value={status:O.NoResults,response:y,error:_},y):(h.value={status:O.Error,response:y,error:_},y)}},fetcherState:h}}const Y={useAxios:re,useDeleteUrlBuilder:Ce,useErrors:Be,useFetchUrlBuilder:pe,useDebouncedFilter:Fe,useFetcher:qe,useI18n:ne},oe=(e,l)=>{const t=e.__vccOpts||e;for(const[a,r]of l)t[a]=r;return t},Oe={class:"toolbar-container"},je={key:0,class:"toolbar-button-container"},Ue=["data-testid"],Le=D({__name:"EntityBaseTable",props:{tableHeaders:{type:Object,required:!0,default:()=>({})},fetcher:{type:Function,required:!0,default:async()=>({data:[],total:0})},initialFetcherParams:{type:Object,default:null},fetcherCacheKey:{type:Number,default:1},isLoading:{type:Boolean,default:!1},query:{type:String,default:""},enableClientSort:{type:Boolean,default:!1},enableEntityActions:{type:Boolean,default:!0},emptyStateOptions:{type:Object,default:()=>({})},errorMessage:{type:String,default:""},disablePaginationPageJump:{type:Boolean,default:void 0},disableSorting:{type:Boolean,default:void 0},paginationType:{type:String,default:void 0},cellAttributes:{type:Function,default:()=>({})},rowAttributes:{type:Function,default:()=>({})},preferencesStorageKey:{type:String,default:"",required:!0},dropdownMenuWidth:{type:String,default:"",required:!1}},emits:["click:row","sort","clear-search-input","empty-state-cta-clicked"],setup(e,{emit:l}){const t=e,{i18n:{t:a}}=Y.useI18n(),r=S(()=>{const c=[];return Object.keys(t.tableHeaders).forEach(d=>{const s=t.tableHeaders[d];c.push({label:s.label??d,key:d,sortable:s.sortable??!1})}),t.enableEntityActions&&c.push({key:"actions",hideLabel:!0}),c}),o=c=>({"data-rowid":c.id,"data-testid":c.name,...t.rowAttributes(c)}),h=c=>({"data-testid":c.headerKey,...t.cellAttributes(c)}),b=()=>{l("empty-state-cta-clicked"),_()},_=()=>{l("clear-search-input")},y=(c,d)=>{l("click:row",d)},f=c=>{l("sort",c)},{setTablePreferences:w,getTablePreferences:$}=Ae(),m=S(()=>{const c=$(t.preferencesStorageKey);return{...t.initialFetcherParams,...c}}),F=c=>{t.preferencesStorageKey&&w(t.preferencesStorageKey,c)};return(c,d)=>{const s=E("KIcon"),g=E("KButton"),u=E("KDropdownMenu"),I=E("KTable"),B=E("KCard");return M(),j(B,{class:"kong-ui-entity-base-table"},{body:i(()=>[v(I,{"cell-attrs":h,"disable-pagination-page-jump":e.disablePaginationPageJump,"disable-sorting":e.disableSorting,"empty-state-action-button-icon":e.query?"":"plus","empty-state-action-message":e.query?n(a)("baseTable.emptyState.noSearchResultsCtaText"):e.emptyStateOptions.ctaText,"empty-state-action-route":e.query?"":e.emptyStateOptions.ctaPath,"empty-state-icon":e.query?"stateNoSearchResults":"stateGruceo","empty-state-icon-size":"96","empty-state-message":e.query?n(a)("baseTable.emptyState.noSearchResultsMessage"):e.emptyStateOptions.message,"empty-state-title":e.query?n(a)("baseTable.emptyState.noSearchResultsTitle"):e.emptyStateOptions.title,"enable-client-sort":e.enableClientSort,"error-state-title":e.errorMessage,fetcher:e.fetcher,"fetcher-cache-key":String(e.fetcherCacheKey),"has-error":!!e.errorMessage,headers:n(r),"hide-pagination-when-optional":"","initial-fetcher-params":n(m),"is-loading":e.isLoading,"pagination-type":e.paginationType,"row-attrs":o,"search-input":e.query,onKtableEmptyStateCtaClicked:b,"onRow:click":y,onSort:f,"onUpdate:tablePreferences":F},ue({toolbar:i(()=>[P("div",Oe,[J(c.$slots,"toolbar-filter",{},void 0,!0),c.$slots["toolbar-button"]?(M(),q("div",je,[J(c.$slots,"toolbar-button",{},void 0,!0)])):ae("",!0)])]),actions:i(({row:U,rowKey:C,rowValue:L})=>[P("div",{class:"actions-container","data-testid":U.name},[v(u,{"kpop-attributes":{placement:"bottomEnd"},width:e.dropdownMenuWidth},{items:i(()=>[J(c.$slots,"actions",{row:U,rowKey:C,rowValue:L},void 0,!0)]),default:i(()=>[v(g,{class:"non-visual-button","data-testid":"overflow-actions-button",size:"small"},{icon:i(()=>[v(s,{color:"var(--black-400, #3c4557)",icon:"more",size:"16"})]),_:1})]),_:2},1032,["width"])],8,Ue)]),_:2},[de(e.tableHeaders,(U,C)=>({name:C,fn:i(({row:L,rowKey:H,rowValue:z})=>[J(c.$slots,C,{row:L,rowKey:H,rowValue:z},void 0,!0)])}))]),1032,["disable-pagination-page-jump","disable-sorting","empty-state-action-button-icon","empty-state-action-message","empty-state-action-route","empty-state-icon","empty-state-message","empty-state-title","enable-client-sort","error-state-title","fetcher","fetcher-cache-key","has-error","headers","initial-fetcher-params","is-loading","pagination-type","search-input"])]),_:3})}}}),Ne=oe(Le,[["__scopeId","data-v-6eab8cd1"]]),De={key:0,class:"kong-ui-entity-delete-error"},He={key:1,class:"description"},ze=D({__name:"EntityDeleteModal",props:{visible:{type:Boolean,required:!0,default:!1},title:{type:String,default:"Delete"},entityType:{type:String,required:!0},entityName:{type:String,default:""},needConfirm:{type:Boolean,default:!0},description:{type:String,default:""},actionPending:{type:Boolean,default:!1},error:{type:String,default:""}},emits:["cancel","proceed"],setup(e,{emit:l}){const t=e,{i18nT:a}=Y.useI18n(),r=S(()=>t.needConfirm?t.entityName:""),o=()=>{l("cancel")},h=()=>{l("proceed")};return(b,_)=>{const y=E("KAlert"),f=E("KPrompt");return M(),j(f,{"action-button-text":"Yes, delete","action-pending":e.actionPending,class:"kong-ui-entity-delete-modal","confirmation-text":n(r),"is-visible":e.visible,title:e.title,type:"danger",onCanceled:o,onProceed:h},{"body-content":i(()=>[e.error?(M(),q("div",De,[v(y,{appearance:"danger"},{alertMessage:i(()=>[K(V(e.error),1)]),_:1})])):ae("",!0),v(n(a),{class:"message",keypath:t.entityName?"deleteModal.messageWithName":"deleteModal.message",tag:"p"},ue({entityType:i(()=>[K(V(t.entityType),1)]),_:2},[t.entityName?{name:"entityName",fn:i(()=>[P("strong",null,V(t.entityName),1)]),key:"0"}:void 0]),1032,["keypath"]),t.description||b.$slots.description?(M(),q("div",He,[J(b.$slots,"description",{},()=>[P("p",null,V(t.description),1)],!0)])):ae("",!0)]),_:3},8,["action-pending","confirmation-text","is-visible","title"])}}}),Je=oe(ze,[["__scopeId","data-v-3513e33b"]]),We={fill:"none",height:"20",viewBox:"0 0 20 20",width:"20",xmlns:"http://www.w3.org/2000/svg"},Ge={id:"mask0_180_20349",height:"20",maskUnits:"userSpaceOnUse",style:{"mask-type":"alpha"},width:"20",x:"0",y:"0"},Ye=["fill"],Ze={mask:"url(#mask0_180_20349)"},Qe=["fill"],Xe=D({__name:"IconFilter",props:{color:{type:String,default:"var(--kong-ui-entity-filter-color, var(--blue-500, #1155cb))"}},setup(e){return(l,t)=>(M(),q("svg",We,[P("mask",Ge,[P("rect",{fill:e.color,height:"20",width:"20"},null,8,Ye)]),P("g",Ze,[P("path",{d:"M8 14.5V13H12V14.5H8ZM5 10.75V9.25H15V10.75H5ZM3 7V5.5H17V7H3Z",fill:e.color},null,8,Qe)])]))}}),et={key:1,class:"kong-ui-entity-filter"},tt={class:"menu-item-title"},at={class:"menu-item-indicator"},lt={class:"menu-item-body"},rt=["for"],nt={class:"menu-item-buttons"},st=D({__name:"EntityFilter",props:{config:{type:Object,required:!0,default:()=>({isExactMatch:!0,placeholder:""})},modelValue:{type:String,required:!0}},emits:["update:modelValue"],setup(e,{emit:l}){const t=e,{i18n:{t:a}}=Y.useI18n(),r=T(!1),o=T({}),h=S(()=>{const d=[];return new URLSearchParams(t.modelValue).forEach((s,g)=>{s!==""&&d.push(g)}),d}),b=S(()=>{const d=t.config.fields;return Object.keys(d).filter(s=>d[s].searchable).map(s=>({label:d[s].label||s,value:s}))});ce(()=>t.modelValue,d=>{o.value={},new URLSearchParams(d).forEach((s,g)=>{o.value[g]=s})});const _=()=>{r.value=!r.value},y=d=>{l("update:modelValue",d)},f=d=>`filter-${d}`,w=d=>{var s,g;return(((g=(s=t.config.schema)==null?void 0:s[d])==null?void 0:g.values)??[]).map(u=>({value:u,label:u}))},$=d=>{var s,g;return((g=(s=t.config.schema)==null?void 0:s[d])==null?void 0:g.type)??"text"},m=d=>{o.value={...o.value,[d]:""},c()},F=()=>{o.value={},c(!0)},c=(d=!1)=>{const s=Object.keys(o.value).reduce((g,u)=>(o.value[u]&&(g[u]=`${o.value[u]}`),g),{});d&&(r.value=!1),l("update:modelValue",new URLSearchParams(s).toString())};return(d,s)=>{const g=E("KInput"),u=E("KButton"),I=E("KSelect"),B=E("KMenuItem"),U=E("KMenu");return e.config.isExactMatch?(M(),j(g,{key:0,autocomplete:"off",class:"kong-ui-entity-filter-input","data-testid":"search-input","model-value":e.modelValue,placeholder:e.config.placeholder,"onUpdate:modelValue":y},{icon:i(()=>[v(Xe)]),_:1},8,["model-value","placeholder"])):(M(),q("div",et,[v(u,{appearance:"btn-link","data-testid":"filter-button",icon:"filter",onClick:_},{default:i(()=>[K(V(n(a)("filter.filterButtonText"))+" "+V(n(h).length>0?`(${n(h).length})`:""),1)]),_:1}),ee(P("div",{class:"kong-ui-entity-filter-backdrop",onClick:_},null,512),[[te,r.value]]),ee(v(U,{class:"kong-ui-entity-filter-menu"},{body:i(()=>[(M(!0),q(we,null,de(n(b),(C,L)=>(M(),j(B,{key:C.value,"data-testid":C.value,expandable:"","last-menu-item":L===n(b).length-1},{itemTitle:i(()=>[P("span",tt,[K(V(C.label)+" ",1),ee(P("span",at,null,512),[[te,n(h).includes(C.value)]])])]),itemBody:i(()=>{var H,z;return[P("div",lt,[P("label",{class:"menu-item-label",for:f(C.value)},V(n(a)("filter.fieldLabel")),9,rt),((z=(H=e.config.schema)==null?void 0:H[C.value])==null?void 0:z.type)==="select"?(M(),j(I,{key:0,id:f(C.value),modelValue:o.value[C.value],"onUpdate:modelValue":A=>o.value[C.value]=A,appearance:"select",items:w(C.value),placeholder:n(a)("filter.selectPlaceholder")},null,8,["id","modelValue","onUpdate:modelValue","items","placeholder"])):(M(),j(g,{key:1,id:f(C.value),modelValue:o.value[C.value],"onUpdate:modelValue":A=>o.value[C.value]=A,autocomplete:"off",placeholder:n(a)("filter.inputPlaceholder"),size:"small",type:$(C.value)},null,8,["id","modelValue","onUpdate:modelValue","placeholder","type"]))]),P("div",nt,[v(u,{appearance:"btn-link","data-testid":"apply-filter",size:"small",onClick:s[0]||(s[0]=A=>c(!0))},{default:i(()=>[K(V(n(a)("filter.applyButtonText")),1)]),_:1}),v(u,{appearance:"btn-link","data-testid":"clear-filter",size:"small",onClick:A=>m(C.value)},{default:i(()=>[K(V(n(a)("filter.clearButtonText")),1)]),_:2},1032,["onClick"])])]}),_:2},1032,["data-testid","last-menu-item"]))),128))]),actionButton:i(()=>[v(u,{onClick:F},{default:i(()=>[K(V(n(a)("filter.clearAllButtonText")),1)]),_:1})]),_:1},512),[[te,r.value]])]))}}}),ot=oe(st,[["__scopeId","data-v-fcf9a8f1"]]),Z=D({__name:"PermissionsWrapper",props:{authFunction:{type:Function,required:!0,default:async()=>!0},forceShow:{type:Boolean,default:!1}},setup(e){const l=e,t=T(void 0),a=S(()=>t.value===!0||t.value!==void 0&&l.forceShow===!0);return be(async()=>{t.value=await l.authFunction()}),(r,o)=>n(a)?J(r.$slots,"default",{key:0,isAllowed:t.value}):ae("",!0)}}),{useAxios:it,useDeleteUrlBuilder:ct,useErrors:Gt,useFetchUrlBuilder:Yt,useFetcher:ut,useDebouncedFilter:Zt}=Y,dt={create:"New Vault",copy_id:"Copy ID",copy_json:"Copy JSON",edit:"Edit",delete:"Delete",view:"View Details"},pt={general:"Vaults could not be retrieved",delete:"The vault could not be deleted at this time.",copy:"Failed to copy to clipboard"},yt={placeholder:{konnect:"Filter by exact name or ID"}},ft={title:"Vaults",list:{toolbar_actions:{new_vault:"New Vault"},table_headers:{prefix:"Prefix",name:"Vault Type",description:"Description",tags:"Tags",id:"ID"},empty_state:{title:"Configure a New Vault",description:"Improve the security of your Kong Gateway deployment with centralized secrets."}}},vt={success:"Copied {val} to clipboard",success_brief:"Successfully copied to clipboard"},mt={actions:dt,delete:{title:"Delete Vault",description:"Are you sure you want to delete this vault? This action cannot be reversed."},errors:pt,search:yt,vaults:ft,copy:vt};function gt(){const e=_e("en-us",mt);return{i18n:e,i18nT:ke(e)}}const ht={useI18n:gt},bt={list:{konnect:"/api/runtime_groups/{controlPlaneId}/vaults",kongManager:"/{workspace}/vaults"}},wt={class:"kong-ui-entities-vaults-list"},_t={class:"table-content-overflow-wrapper"},kt={class:"table-content-overflow-wrapper"},St={key:1},Ct=D({__name:"VaultList",props:{config:{type:Object,required:!0,validator:e=>!(!e||!["konnect","kongManager"].includes(e==null?void 0:e.app)||!e.createRoute||!e.getViewRoute||!e.getEditRoute||e.app==="kongManager"&&!e.isExactMatch&&!e.filterSchema)},canCreate:{type:Function,required:!1,default:async()=>!0},canDelete:{type:Function,required:!1,default:async()=>!0},canEdit:{type:Function,required:!1,default:async()=>!0},canRetrieve:{type:Function,required:!1,default:async()=>!0}},emits:["error","loading","copy:success","copy:error","delete:success"],setup(e,{emit:l}){var t;const a=e,{i18n:{t:r}}=ht.useI18n(),o=Bt(),{axiosInstance:h}=it({headers:(t=a.config)==null?void 0:t.requestHeaders}),b=S(()=>a.config.app!=="kongManager"||!!a.config.disableSorting),_={prefix:{label:r("vaults.list.table_headers.prefix"),searchable:!0,sortable:!0},name:{label:r("vaults.list.table_headers.name"),searchable:!0,sortable:!0},description:{label:r("vaults.list.table_headers.description"),sortable:!1},tags:{label:r("vaults.list.table_headers.tags"),sortable:!1}},y=_,f=S(()=>{var p,x;let R=`${a.config.apiBaseUrl}${bt.list[a.config.app]}`;return a.config.app==="konnect"?R=R.replace(/{controlPlaneId}/gi,((p=a.config)==null?void 0:p.controlPlaneId)||""):a.config.app==="kongManager"&&(R=R.replace(/{workspace}/gi,((x=a.config)==null?void 0:x.workspace)||"")),R}),w=T(""),$=S(()=>{if(a.config.app==="konnect"||a.config.isExactMatch)return{isExactMatch:!0,placeholder:r("search.placeholder.konnect")};const{prefix:p,name:x}=_;return{isExactMatch:!1,fields:{name:x,prefix:p},schema:a.config.filterSchema}}),m=T(1),{fetcher:F,fetcherState:c}=ut(a.config,f.value),d=()=>{w.value=""},s=()=>{m.value++},g=T(""),u=S(()=>c.value.status===O.Loading),I=S(()=>{var p;return c.value.status===O.Idle&&!!((p=c.value.response)!=null&&p.data.length)}),B=S(()=>!u.value&&(I.value||!!w.value)),U=(p,x)=>{const R=p.id;if(!x(R)){l("copy:error",{entity:p,field:"id",message:r("errors.copy")});return}l("copy:success",{entity:p,field:"id",message:r("copy.success",{val:R})})},C=(p,x)=>{const R=JSON.stringify(p);if(!x(R)){l("copy:error",{entity:p,message:r("errors.copy")});return}l("copy:success",{entity:p,message:r("copy.success_brief")})},L=async p=>{var x;await((x=a.canRetrieve)==null?void 0:x.call(a,p))&&o.push(a.config.getViewRoute(p.id))},H=p=>({label:r("actions.view"),to:a.config.getViewRoute(p)}),z=p=>({label:r("actions.edit"),to:a.config.getEditRoute(p)}),A=T(void 0),Q=T(!1),X=T(!1),ge=T(""),Vt=ct(a.config,f.value),Pt=p=>{A.value=p,Q.value=!0},Et=()=>{Q.value=!1},Mt=async()=>{var p,x,R;if((p=A.value)!=null&&p.id){X.value=!0;try{await h.delete(Vt(A.value.id)),X.value=!1,Q.value=!1,m.value++,l("delete:success",A.value)}catch(W){ge.value=((R=(x=W.response)==null?void 0:x.data)==null?void 0:R.message)||W.message||r("errors.delete"),l("error",W)}finally{X.value=!1}}};ce(u,p=>{l("loading",p)},{immediate:!0}),ce(c,p=>{if(p.status===O.Error){g.value=r("errors.general"),l("error",p.error);return}g.value=""});const ie=T({ctaPath:a.config.createRoute,ctaText:void 0,message:r("vaults.list.empty_state.description"),title:r("vaults.title")});return be(async()=>{await a.canCreate()&&(ie.value.title=r("vaults.list.empty_state.title"),ie.value.ctaText=r("actions.create"))}),(p,x)=>{const R=E("KButton"),W=E("KBadge"),$t=E("KTruncate"),G=E("KDropdownItem"),he=E("KClipboardProvider");return M(),q("div",wt,[v(n(Ne),{"disable-pagination-page-jump":"","disable-sorting":n(b),"empty-state-options":ie.value,"enable-entity-actions":"","error-message":g.value,fetcher:n(F),"fetcher-cache-key":m.value,"is-loading":n(u),"pagination-type":"offset","preferences-storage-key":"kong-ui-entities-vaults-list",query:w.value,"table-headers":n(y),onClearSearchInput:d,"onClick:row":x[2]||(x[2]=k=>L(k)),onSort:s},ue({"toolbar-filter":i(()=>[ee(v(n(ot),{modelValue:w.value,"onUpdate:modelValue":x[0]||(x[0]=k=>w.value=k),config:n($)},null,8,["modelValue","config"]),[[te,n(B)]])]),prefix:i(({rowValue:k})=>[P("div",_t,[P("b",null,V(k??"-"),1)])]),name:i(({rowValue:k})=>[P("b",null,V(k??"-"),1)]),description:i(({rowValue:k})=>[P("div",kt,V(k??"-"),1)]),tags:i(({rowValue:k})=>[(k==null?void 0:k.length)>0?(M(),j($t,{key:0},{default:i(()=>[(M(!0),q(we,null,de(k,N=>(M(),j(W,{key:N,onClick:x[1]||(x[1]=Rt(()=>{},["stop"]))},{default:i(()=>[K(V(N),1)]),_:2},1024))),128))]),_:2},1024)):(M(),q("span",St,"-"))]),actions:i(({row:k})=>[v(he,null,{default:i(({copyToClipboard:N})=>[v(G,{"data-testid":"action-entity-copy-id",onClick:It=>U(k,N)},{default:i(()=>[K(V(n(r)("actions.copy_id")),1)]),_:2},1032,["onClick"])]),_:2},1024),v(he,null,{default:i(({copyToClipboard:N})=>[v(G,{"data-testid":"action-entity-copy-json",onClick:It=>C(k,N)},{default:i(()=>[K(V(n(r)("actions.copy_json")),1)]),_:2},1032,["onClick"])]),_:2},1024),v(n(Z),{"auth-function":()=>e.canRetrieve(k)},{default:i(()=>[v(G,{"data-testid":"action-entity-view","has-divider":"",item:H(k.id)},null,8,["item"])]),_:2},1032,["auth-function"]),v(n(Z),{"auth-function":()=>e.canEdit(k)},{default:i(()=>[v(G,{"data-testid":"action-entity-edit",item:z(k.id)},null,8,["item"])]),_:2},1032,["auth-function"]),v(n(Z),{"auth-function":()=>e.canDelete(k)},{default:i(()=>[v(G,{"data-testid":"action-entity-delete","has-divider":"","is-dangerous":"",onClick:N=>Pt(k)},{default:i(()=>[K(V(n(r)("actions.delete")),1)]),_:2},1032,["onClick"])]),_:2},1032,["auth-function"])]),_:2},[n(B)?{name:"toolbar-button",fn:i(()=>[v(n(Z),{"auth-function":()=>e.canCreate()},{default:i(()=>[v(R,{appearance:"primary","data-testid":"toolbar-add-vault",icon:"plus",to:e.config.createRoute},{default:i(()=>[K(V(n(r)("vaults.list.toolbar_actions.new_vault")),1)]),_:1},8,["to"])]),_:1},8,["auth-function"])]),key:"0"}:void 0]),1032,["disable-sorting","empty-state-options","error-message","fetcher","fetcher-cache-key","is-loading","query","table-headers"]),v(n(Je),{"action-pending":X.value,description:n(r)("delete.description"),"entity-name":A.value&&(A.value.name||A.value.id),"entity-type":n(ye).Vault,error:ge.value,title:n(r)("delete.title"),visible:Q.value,onCancel:Et,onProceed:Mt},null,8,["action-pending","description","entity-name","entity-type","error","title","visible"])])}}}),xt=(e,l)=>{const t=e.__vccOpts||e;for(const[a,r]of l)t[a]=r;return t},Tt=xt(Ct,[["__scopeId","data-v-af59bf80"]]);let fe,ve,me;fe={class:"vaults-listing"},ve=K(" Improve the security of your Kong Gateway deployment with centralized secrets. "),me=K(" Learn more "),Se=D({__name:"List",setup(e){const l="vaults",t=Lt("rbac"),a=S(()=>({name:{type:"text",searchable:!0},prefix:{type:"text",searchable:!0}})),r=At(),o=Ft(),{onCopySuccess:h,onCopyError:b}=Dt(),{entityDoc:_}=qt(r),y=_.value(l),f=S(()=>({name:"create-vaults"})),w=S(()=>u=>({name:"show-vaults",params:{id:u}})),$=S(()=>u=>({name:"update-vaults",params:{id:u}})),m=Ot({...Ht(),createRoute:f,getViewRoute:w,getEditRoute:$,filterSchema:a}),F=S(()=>()=>le(t,{path:l,action:"create"})),c=S(()=>u=>le(t,{path:`${l}/${u.id}`,action:"read"})),d=S(()=>u=>le(t,{path:`${l}/${u.id}`,action:"update"})),s=S(()=>u=>le(t,{path:`${l}/${u.id}`,action:"delete"})),g=u=>{o.notify({message:`${u.prefix??u.name??u.id} Vault successfully deleted!`,type:"success"})};return(u,I)=>{const B=E("KExternalLink");return M(),q("section",fe,[v(jt,null,{"below-title":i(()=>[v(Ut,null,{default:i(()=>[P("p",null,[ve,v(B,{href:n(y)},{default:i(()=>[me]),_:1},8,["href"])])]),_:1})]),_:1}),v(n(Tt),{config:m,"can-create":n(F),"can-delete":n(s),"can-edit":n(d),"can-retrieve":n(c),"onCopy:success":n(h),"onCopy:error":n(b),"onDelete:success":g},null,8,["config","can-create","can-delete","can-edit","can-retrieve","onCopy:success","onCopy:error"])])}}})});export{Wt as __tla,Se as default};