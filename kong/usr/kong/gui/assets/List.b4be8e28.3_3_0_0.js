/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{ag as G,aw as Kt,B as x,C as b,ak as pe,ax as be,r as K,o as E,c as O,b as f,O as ye,ay as s,w as u,d as A,t as V,k as le,ah as ne,a as R,l as L,R as we,U as fe,i as Et,G as Q,h as se,az as Se,aA as _e,aB as Vt,J as $t,aC as Mt,n as Rt,q as Bt,y as At,aD as Ft,__tla as qt}from"./index.84d84090.3_3_0_0.js";import{u as Nt,a as Ot,b as re,__tla as jt}from"./useRbacPermission.15766885.3_3_0_0.js";import{u as Ut,__tla as Dt}from"./useRedirect.ccdc1330.3_3_0_0.js";import{b as Lt}from"./buildRoute.1ddadad0.3_3_0_0.js";import{__tla as Jt}from"./monaco-editor.90904fcf.3_3_0_0.js";let Ce,Ht=Promise.all([(()=>{try{return qt}catch{}})(),(()=>{try{return jt}catch{}})(),(()=>{try{return Dt}catch{}})(),(()=>{try{return Jt}catch{}})()]).then(async()=>{const Ie={title:"Keys",list:{toolbar_actions:{new_key:"New Key"},table_headers:{name:"Name",key_id:"Key ID",id:"ID",tags:"Tags"},empty_state:{title:"Configure a New Key",description:"A Key object holds a representation of asymmetric keys in various formats."}},actions:{create:"New Key",copy_id:"Copy ID",copy_json:"Copy JSON",edit:"Edit",delete:"Delete",clear:"Clear",view:"View Details",loading:"Loading..."},search:{placeholder:"Filter by exact name or ID",no_results:"No results found"},delete:{title:"Delete a Key",description:"This action cannot be reversed so make sure to check the key usage before deleting."},errors:{general:"Keys could not be retrieved",delete:"The key could not be deleted at this time.",copy:"Failed to copy to clipboard",key_sets:{fetch:"Could not fetch available key sets",invalid:"Please select a valid key set ID"}},copy:{success:"Copied {val} to clipboard",success_brief:"Successfully copied to clipboard"},form:{sections:{general:{title:"General Information",description:"General information will help identify and manage this key."},keys:{title:"Asymmetric Keys",description:"Choose the preferred format for this asymmetric key. Currently only support PEM and JWK format."}},fields:{id:{label:"Key ID",placeholder:"Enter a key ID",tooltip:"An identifier for a key",help:"If using JWK, need to match with the jwk.kid field"},name:{label:"Name",placeholder:"Enter a unique name for this key",tooltip:"The name to associate with the given key"},tags:{label:"Tags",placeholder:"Enter a list of tags separated by comma",help:"e.g. tag1, tag2, tag3",tooltip:"An optional set of strings for grouping and filtering, separated by commas."},key_set:{label:"Key Set",placeholder:"Select a key set to add into",footer:"Search by exact ID to find key sets not included in the list"},key_format:{label:"Key Format",options:{jwk:"JWK",pem:"PEM"}},jwk:{label:"JWK",placeholder:"Enter a JWK",tooltip:"A JSON Web key represented as a string"},private_key:{label:"Private Key",placeholder:"Enter a private key"},public_key:{label:"Public Key",placeholder:"Enter a public key"}}}},Pe={keys:Ie};function Te(){const e=Se("en-us",Pe);return{i18n:e,i18nT:_e(e)}}const xe={useI18n:Te},Ke={list:{konnect:{all:"/api/runtime_groups/{controlPlaneId}/keys",forKeySet:"/api/runtime_groups/{controlPlaneId}/key-sets/{keySetId}/keys"},kongManager:{all:"/{workspace}/keys",forKeySet:"/{workspace}/key-sets/{keySetId}/keys"}},form:{konnect:{create:"/api/runtime_groups/{controlPlaneId}/keys",edit:"/api/runtime_groups/{controlPlaneId}/keys/{id}",keySets:"/api/runtime_groups/{controlPlaneId}/key-sets"},kongManager:{create:"/{workspace}/keys",edit:"/{workspace}/keys/{id}",keySets:"/{workspace}/key-sets"}}};function oe(e={}){return{axiosInstance:Vt.create({withCredentials:!0,timeout:3e4,...e})}}function Ee(e,l){const t=s(l),a=b(()=>e.apiBaseUrl.startsWith("/")?new URL(`${window.location.origin}${t}`):new URL(t));return a.value.search="",n=>`${a.value.href}/${n}`}const Ve={message:"Are you sure you want to delete this {entityType}?",messageWithName:"Are you sure you want to delete this {entityType} {entityName}?"},$e={actions:{save:"Save",cancel:"Cancel",back:"Back"},errors:{edit:"The entity could not be edited at this time."}},Me={emptyState:{noSearchResultsTitle:"No results found",noSearchResultsMessage:"Please adjust the criteria and try again.",noSearchResultsCtaText:"Clear"}},Re={filterButtonText:"Filter",fieldLabel:"Filter by:",inputPlaceholder:"Enter a value",selectPlaceholder:"Select an item",applyButtonText:"Apply",clearButtonText:"Clear",clearAllButtonText:"Clear all filters"},Be={errors:{fetch:"Could not fetch available items",invalid:"Please select a valid value"}},Ae={unexpected:"An unexpected error has occurred"},Fe={enable:{title:"Enable {entityType}",message:"Are you sure you want to enable the {entityType} {entityName}?",confirmText:"Yes, enable"},disable:{title:"Disable {entityType}",message:"Are you sure you want to disable the {entityType} {entityName}?",confirmText:"Yes, disable"}},qe={deleteModal:Ve,baseForm:$e,baseTable:Me,filter:Re,debouncedFilter:Be,errors:Ae,toggleModal:Fe};function ie(){const e=Se("en-us",qe);return{i18n:e,i18nT:_e(e)}}function Ne(){const{i18n:{t:e}}=ie();return{getMessageFromError:l=>{var t,a,n;if(!l)return e("errors.unexpected");if((t=l==null?void 0:l.response)!=null&&t.data){if(l.response.data.detail)return l.response.data.detail;if((a=l.response.data.details)!=null&&a.length)return l.response.data.details.map(o=>{let g=e("errors.unexpected");return o.messages&&typeof o.messages=="object"&&o.messages.length&&(g=o.messages.join(", ")),o.field?`${o.field} - ${g}`:g}).join("; ");if(l.response.data.message){const{message:o}=l.response.data;return Array.isArray(o)?(n=o[0])!=null&&n.constraints?Object.values(o[0].constraints)[0]:o[0]:o}if(typeof l.response.data=="string")return l.response.data;if(typeof l.response.data=="object")return Object.keys(l.response.data).map(o=>`${o} ${l.response.data[o]}`).join(", ")}return l.message||e("errors.unexpected")}}}function me(e,l){const t=x(s(e)),a=x(s(l)),n=b(()=>!!(t.value.app==="konnect"||t.value.isExactMatch)),o=b(()=>a.value.startsWith("/")?new URL(`${window.location.origin}${a.value}`):new URL(a.value));return g=>{const{page:h,pageSize:w,offset:p,sortColumnKey:y,sortColumnOrder:S,query:T}=g;try{let v=new URL(o.value.href);return n.value&&T?(v.search="",v=new URL(`${v.href}/${T}/`)):(n.value||new URLSearchParams(T).forEach((F,c)=>{v.searchParams.append(c,F)}),y&&v.searchParams.append("sort_by",y),S==="desc"&&v.searchParams.append("sort_desc","1"),v.searchParams.append("size",String(w))),p&&h!==1&&v.searchParams.append("offset",String(p)),v.href}catch(v){return console.error("RouteList(fetcher)",v),a.value}}}function Oe(){return{debounce:(e,l)=>{let t;return(...a)=>{clearTimeout(t),t=window==null?void 0:window.setTimeout(()=>{e(...a)},l)}}}}const ce="khcp-user-table-preferences",je={pageSize:30,sortColumnKey:void 0,sortColumnOrder:void 0};function Ue(){const e=t=>{if(typeof t=="string")try{return JSON.parse(t)}catch(a){console.error("useTablePreferences(tryParseJson)",a);return}},l=()=>{const t=e(localStorage.getItem(ce));return!t||!Object.keys(t).length?new Map:new Map(Object.entries(t))};return{setTablePreferences:(t,a)=>{try{const n=l();n.set(t,a),localStorage.setItem(ce,JSON.stringify(Object.fromEntries(n.entries())))}catch(n){console.error("useTablePreferences(setTablePreferences)",n)}},getTablePreferences:t=>{const a=l();return(a==null?void 0:a.get(t))||void 0||je},deleteAllTablePreferences:()=>{localStorage.removeItem(ce)}}}function De(e,l,t){t||(t="100");const{axiosInstance:a}=oe({headers:e.requestHeaders}),{i18n:{t:n}}=ie(),{debounce:o}=Oe(),g=o(async r=>{await d(r)},200),h=x(!1),w=x(""),p=x(""),y=x([]),S=x(void 0),T=s(l);let v=`${e.apiBaseUrl}${T}`;e.app==="konnect"?v=v.replace(/{controlPlaneId}/gi,(e==null?void 0:e.controlPlaneId)||""):e.app==="kongManager"&&(v=v.replace(/{workspace}/gi,(e==null?void 0:e.workspace)||""));const F=async()=>{try{h.value=!0;const{data:r}=await a.get(`${v}?size=${t}`);r!=null&&r.next||(S.value=r.data),r!=null&&r.data&&(y.value=r.data)}catch{y.value=[],w.value=n("debouncedFilter.errors.fetch")}finally{h.value=!1}},c=x(""),d=async r=>{var k,I;if(c.value!==r)if(c.value=r||"",S.value===void 0)try{h.value=!0,w.value="",p.value="";let $=v+"";r&&($+=`/${r}`);const{data:M}=await a.get(`${$}?size=${t}`);M!=null&&M.data?y.value=M.data:M!=null&&M.id?y.value=[M]:y.value=[]}catch($){((k=$==null?void 0:$.response)==null?void 0:k.status)===404?p.value=n("debouncedFilter.errors.invalid"):(y.value=[],w.value=n("debouncedFilter.errors.fetch"))}finally{h.value=!1}else h.value=!0,p.value="",r?(y.value=(I=S.value)==null?void 0:I.filter($=>$.id.includes(r)),(!y.value||!y.value.length)&&(p.value=n("debouncedFilter.errors.invalid"))):y.value=S.value,h.value=!1};return{loading:h,error:w,validationError:p,results:y,allRecords:S,loadItems:F,debouncedQueryChange:g}}var ge=(e=>(e.GatewayService="service",e.Route="route",e.Consumer="consumer",e.ConsumerGroup="consumer group",e.Plugin="plugin",e.Upstream="upstream",e.Certificate="certificate",e.CACertificate="ca certificate",e.SNI="SNI",e.Key="key",e.KeySet="key set",e.Vault="vault",e.Application="application",e.Developer="developer",e.acls="ACL Credential",e["basic-auth"]="Basic Auth Credential",e["key-auth"]="Key Auth Credential",e["key-auth-enc"]="Key Auth Encrypted Credential",e.oauth2="OAuth 2.0 Credential",e["hmac-auth"]="HMAC Credential",e.jwt="JWT Credential",e.Target="target",e))(ge||{}),j=(e=>(e[e.Loading=0]="Loading",e[e.Idle=1]="Idle",e[e.NoResults=2]="NoResults",e[e.Error=3]="Error",e))(j||{});function Le(e,l,t="data"){const a=s(l),{axiosInstance:n}=oe({headers:e.requestHeaders}),o=me(e,a),g=x({status:j.Idle});return{fetcher:async h=>{try{g.value={status:j.Loading};const w=o(h),{data:p}=await n.get(w),y=t&&t.replace(/[^\w-_]/gi,"");let S;p[y]&&Array.isArray(p[y])?S=p[y]:S=Object.keys(p).length?[p]:[];const T={data:S,total:S.length,...p.offset?{pagination:{offset:p.offset}}:null};return g.value={status:j.Idle,response:T},T}catch(w){const p={data:[],total:0};return h.query&&w.response.status===404?(g.value={status:j.NoResults,response:p,error:w},p):(g.value={status:j.Error,response:p,error:w},p)}},fetcherState:g}}const X={useAxios:oe,useDeleteUrlBuilder:Ee,useErrors:Ne,useFetchUrlBuilder:me,useDebouncedFilter:De,useFetcher:Le,useI18n:ie},ue=(e,l)=>{const t=e.__vccOpts||e;for(const[a,n]of l)t[a]=n;return t},Je={class:"toolbar-container"},He={key:0,class:"toolbar-button-container"},We=["data-testid"],ze=G({__name:"EntityBaseTable",props:{tableHeaders:{type:Object,required:!0,default:()=>({})},fetcher:{type:Function,required:!0,default:async()=>({data:[],total:0})},initialFetcherParams:{type:Object,default:null},fetcherCacheKey:{type:Number,default:1},isLoading:{type:Boolean,default:!1},query:{type:String,default:""},enableClientSort:{type:Boolean,default:!1},enableEntityActions:{type:Boolean,default:!0},emptyStateOptions:{type:Object,default:()=>({})},errorMessage:{type:String,default:""},disablePaginationPageJump:{type:Boolean,default:void 0},disableSorting:{type:Boolean,default:void 0},paginationType:{type:String,default:void 0},cellAttributes:{type:Function,default:()=>({})},rowAttributes:{type:Function,default:()=>({})},preferencesStorageKey:{type:String,default:"",required:!0},dropdownMenuWidth:{type:String,default:"",required:!1}},emits:["click:row","sort","clear-search-input","empty-state-cta-clicked"],setup(e,{emit:l}){const t=e,{i18n:{t:a}}=X.useI18n(),n=b(()=>{const c=[];return Object.keys(t.tableHeaders).forEach(d=>{const r=t.tableHeaders[d];c.push({label:r.label??d,key:d,sortable:r.sortable??!1})}),t.enableEntityActions&&c.push({key:"actions",hideLabel:!0}),c}),o=c=>({"data-rowid":c.id,"data-testid":c.name,...t.rowAttributes(c)}),g=c=>({"data-testid":c.headerKey,...t.cellAttributes(c)}),h=()=>{l("empty-state-cta-clicked"),w()},w=()=>{l("clear-search-input")},p=(c,d)=>{l("click:row",d)},y=c=>{l("sort",c)},{setTablePreferences:S,getTablePreferences:T}=Ue(),v=b(()=>{const c=T(t.preferencesStorageKey);return{...t.initialFetcherParams,...c}}),F=c=>{t.preferencesStorageKey&&S(t.preferencesStorageKey,c)};return(c,d)=>{const r=K("KIcon"),k=K("KButton"),I=K("KDropdownMenu"),$=K("KTable"),M=K("KCard");return E(),L(M,{class:"kong-ui-entity-base-table"},{body:u(()=>[f($,{"cell-attrs":g,"disable-pagination-page-jump":e.disablePaginationPageJump,"disable-sorting":e.disableSorting,"empty-state-action-button-icon":e.query?"":"plus","empty-state-action-message":e.query?s(a)("baseTable.emptyState.noSearchResultsCtaText"):e.emptyStateOptions.ctaText,"empty-state-action-route":e.query?"":e.emptyStateOptions.ctaPath,"empty-state-icon":e.query?"stateNoSearchResults":"stateGruceo","empty-state-icon-size":"96","empty-state-message":e.query?s(a)("baseTable.emptyState.noSearchResultsMessage"):e.emptyStateOptions.message,"empty-state-title":e.query?s(a)("baseTable.emptyState.noSearchResultsTitle"):e.emptyStateOptions.title,"enable-client-sort":e.enableClientSort,"error-state-title":e.errorMessage,fetcher:e.fetcher,"fetcher-cache-key":String(e.fetcherCacheKey),"has-error":!!e.errorMessage,headers:s(n),"hide-pagination-when-optional":"","initial-fetcher-params":s(v),"is-loading":e.isLoading,"pagination-type":e.paginationType,"row-attrs":o,"search-input":e.query,onKtableEmptyStateCtaClicked:h,"onRow:click":p,onSort:y,"onUpdate:tablePreferences":F},ye({toolbar:u(()=>[R("div",Je,[Q(c.$slots,"toolbar-filter",{},void 0,!0),c.$slots["toolbar-button"]?(E(),O("div",He,[Q(c.$slots,"toolbar-button",{},void 0,!0)])):se("",!0)])]),actions:u(({row:U,rowKey:_,rowValue:P})=>[R("div",{class:"actions-container","data-testid":U.name},[f(I,{"kpop-attributes":{placement:"bottomEnd"},width:e.dropdownMenuWidth},{items:u(()=>[Q(c.$slots,"actions",{row:U,rowKey:_,rowValue:P},void 0,!0)]),default:u(()=>[f(k,{class:"non-visual-button","data-testid":"overflow-actions-button",size:"small"},{icon:u(()=>[f(r,{color:"var(--black-400, #3c4557)",icon:"more",size:"16"})]),_:1})]),_:2},1032,["width"])],8,We)]),_:2},[fe(e.tableHeaders,(U,_)=>({name:_,fn:u(({row:P,rowKey:D,rowValue:J})=>[Q(c.$slots,_,{row:P,rowKey:D,rowValue:J},void 0,!0)])}))]),1032,["disable-pagination-page-jump","disable-sorting","empty-state-action-button-icon","empty-state-action-message","empty-state-action-route","empty-state-icon","empty-state-message","empty-state-title","enable-client-sort","error-state-title","fetcher","fetcher-cache-key","has-error","headers","initial-fetcher-params","is-loading","pagination-type","search-input"])]),_:3})}}}),Ge=ue(ze,[["__scopeId","data-v-6eab8cd1"]]),Qe={key:0,class:"kong-ui-entity-delete-error"},Ye={key:1,class:"description"},Ze=G({__name:"EntityDeleteModal",props:{visible:{type:Boolean,required:!0,default:!1},title:{type:String,default:"Delete"},entityType:{type:String,required:!0},entityName:{type:String,default:""},needConfirm:{type:Boolean,default:!0},description:{type:String,default:""},actionPending:{type:Boolean,default:!1},error:{type:String,default:""}},emits:["cancel","proceed"],setup(e,{emit:l}){const t=e,{i18nT:a}=X.useI18n(),n=b(()=>t.needConfirm?t.entityName:""),o=()=>{l("cancel")},g=()=>{l("proceed")};return(h,w)=>{const p=K("KAlert"),y=K("KPrompt");return E(),L(y,{"action-button-text":"Yes, delete","action-pending":e.actionPending,class:"kong-ui-entity-delete-modal","confirmation-text":s(n),"is-visible":e.visible,title:e.title,type:"danger",onCanceled:o,onProceed:g},{"body-content":u(()=>[e.error?(E(),O("div",Qe,[f(p,{appearance:"danger"},{alertMessage:u(()=>[A(V(e.error),1)]),_:1})])):se("",!0),f(s(a),{class:"message",keypath:t.entityName?"deleteModal.messageWithName":"deleteModal.message",tag:"p"},ye({entityType:u(()=>[A(V(t.entityType),1)]),_:2},[t.entityName?{name:"entityName",fn:u(()=>[R("strong",null,V(t.entityName),1)]),key:"0"}:void 0]),1032,["keypath"]),t.description||h.$slots.description?(E(),O("div",Ye,[Q(h.$slots,"description",{},()=>[R("p",null,V(t.description),1)],!0)])):se("",!0)]),_:3},8,["action-pending","confirmation-text","is-visible","title"])}}}),Xe=ue(Ze,[["__scopeId","data-v-3513e33b"]]),et={fill:"none",height:"20",viewBox:"0 0 20 20",width:"20",xmlns:"http://www.w3.org/2000/svg"},tt={id:"mask0_180_20349",height:"20",maskUnits:"userSpaceOnUse",style:{"mask-type":"alpha"},width:"20",x:"0",y:"0"},at=["fill"],lt={mask:"url(#mask0_180_20349)"},nt=["fill"],st=G({__name:"IconFilter",props:{color:{type:String,default:"var(--kong-ui-entity-filter-color, var(--blue-500, #1155cb))"}},setup(e){return(l,t)=>(E(),O("svg",et,[R("mask",tt,[R("rect",{fill:e.color,height:"20",width:"20"},null,8,at)]),R("g",lt,[R("path",{d:"M8 14.5V13H12V14.5H8ZM5 10.75V9.25H15V10.75H5ZM3 7V5.5H17V7H3Z",fill:e.color},null,8,nt)])]))}}),rt={key:1,class:"kong-ui-entity-filter"},ot={class:"menu-item-title"},it={class:"menu-item-indicator"},ct={class:"menu-item-body"},ut=["for"],dt={class:"menu-item-buttons"},pt=G({__name:"EntityFilter",props:{config:{type:Object,required:!0,default:()=>({isExactMatch:!0,placeholder:""})},modelValue:{type:String,required:!0}},emits:["update:modelValue"],setup(e,{emit:l}){const t=e,{i18n:{t:a}}=X.useI18n(),n=x(!1),o=x({}),g=b(()=>{const d=[];return new URLSearchParams(t.modelValue).forEach((r,k)=>{r!==""&&d.push(k)}),d}),h=b(()=>{const d=t.config.fields;return Object.keys(d).filter(r=>d[r].searchable).map(r=>({label:d[r].label||r,value:r}))});pe(()=>t.modelValue,d=>{o.value={},new URLSearchParams(d).forEach((r,k)=>{o.value[k]=r})});const w=()=>{n.value=!n.value},p=d=>{l("update:modelValue",d)},y=d=>`filter-${d}`,S=d=>{var r,k;return(((k=(r=t.config.schema)==null?void 0:r[d])==null?void 0:k.values)??[]).map(I=>({value:I,label:I}))},T=d=>{var r,k;return((k=(r=t.config.schema)==null?void 0:r[d])==null?void 0:k.type)??"text"},v=d=>{o.value={...o.value,[d]:""},c()},F=()=>{o.value={},c(!0)},c=(d=!1)=>{const r=Object.keys(o.value).reduce((k,I)=>(o.value[I]&&(k[I]=`${o.value[I]}`),k),{});d&&(n.value=!1),l("update:modelValue",new URLSearchParams(r).toString())};return(d,r)=>{const k=K("KInput"),I=K("KButton"),$=K("KSelect"),M=K("KMenuItem"),U=K("KMenu");return e.config.isExactMatch?(E(),L(k,{key:0,autocomplete:"off",class:"kong-ui-entity-filter-input","data-testid":"search-input","model-value":e.modelValue,placeholder:e.config.placeholder,"onUpdate:modelValue":p},{icon:u(()=>[f(st)]),_:1},8,["model-value","placeholder"])):(E(),O("div",rt,[f(I,{appearance:"btn-link","data-testid":"filter-button",icon:"filter",onClick:w},{default:u(()=>[A(V(s(a)("filter.filterButtonText"))+" "+V(s(g).length>0?`(${s(g).length})`:""),1)]),_:1}),le(R("div",{class:"kong-ui-entity-filter-backdrop",onClick:w},null,512),[[ne,n.value]]),le(f(U,{class:"kong-ui-entity-filter-menu"},{body:u(()=>[(E(!0),O(we,null,fe(s(h),(_,P)=>(E(),L(M,{key:_.value,"data-testid":_.value,expandable:"","last-menu-item":P===s(h).length-1},{itemTitle:u(()=>[R("span",ot,[A(V(_.label)+" ",1),le(R("span",it,null,512),[[ne,s(g).includes(_.value)]])])]),itemBody:u(()=>{var D,J;return[R("div",ct,[R("label",{class:"menu-item-label",for:y(_.value)},V(s(a)("filter.fieldLabel")),9,ut),((J=(D=e.config.schema)==null?void 0:D[_.value])==null?void 0:J.type)==="select"?(E(),L($,{key:0,id:y(_.value),modelValue:o.value[_.value],"onUpdate:modelValue":H=>o.value[_.value]=H,appearance:"select",items:S(_.value),placeholder:s(a)("filter.selectPlaceholder")},null,8,["id","modelValue","onUpdate:modelValue","items","placeholder"])):(E(),L(k,{key:1,id:y(_.value),modelValue:o.value[_.value],"onUpdate:modelValue":H=>o.value[_.value]=H,autocomplete:"off",placeholder:s(a)("filter.inputPlaceholder"),size:"small",type:T(_.value)},null,8,["id","modelValue","onUpdate:modelValue","placeholder","type"]))]),R("div",dt,[f(I,{appearance:"btn-link","data-testid":"apply-filter",size:"small",onClick:r[0]||(r[0]=H=>c(!0))},{default:u(()=>[A(V(s(a)("filter.applyButtonText")),1)]),_:1}),f(I,{appearance:"btn-link","data-testid":"clear-filter",size:"small",onClick:H=>v(_.value)},{default:u(()=>[A(V(s(a)("filter.clearButtonText")),1)]),_:2},1032,["onClick"])])]}),_:2},1032,["data-testid","last-menu-item"]))),128))]),actionButton:u(()=>[f(I,{onClick:F},{default:u(()=>[A(V(s(a)("filter.clearAllButtonText")),1)]),_:1})]),_:1},512),[[ne,n.value]])]))}}}),yt=ue(pt,[["__scopeId","data-v-fcf9a8f1"]]),ee=G({__name:"PermissionsWrapper",props:{authFunction:{type:Function,required:!0,default:async()=>!0},forceShow:{type:Boolean,default:!1}},setup(e){const l=e,t=x(void 0),a=b(()=>t.value===!0||t.value!==void 0&&l.forceShow===!0);return be(async()=>{t.value=await l.authFunction()}),(n,o)=>s(a)?Q(n.$slots,"default",{key:0,isAllowed:t.value}):se("",!0)}}),{useAxios:ft,useDeleteUrlBuilder:mt,useErrors:Wt,useFetchUrlBuilder:zt,useFetcher:gt,useDebouncedFilter:Gt}=X,ht={class:"kong-ui-entities-keys-list"},vt={key:1},kt=G({__name:"KeyList",props:{config:{type:Object,required:!0,validator:e=>!(!e||!["konnect","kongManager"].includes(e==null?void 0:e.app)||!e.createRoute||!e.getViewRoute||!e.getEditRoute||e.app==="kongManager"&&!e.isExactMatch&&!e.filterSchema)},canCreate:{type:Function,required:!1,default:async()=>!0},canDelete:{type:Function,required:!1,default:async()=>!0},canEdit:{type:Function,required:!1,default:async()=>!0},canRetrieve:{type:Function,required:!1,default:async()=>!0}},emits:["error","loading","copy:success","copy:error","delete:success"],setup(e,{emit:l}){var t;const a=e,{i18n:{t:n}}=xe.useI18n(),o=Kt(),{axiosInstance:g}=ft({headers:(t=a.config)==null?void 0:t.requestHeaders}),h=x(1),w=b(()=>a.config.app!=="kongManager"||!!a.config.disableSorting),p={name:{label:n("keys.list.table_headers.name"),searchable:!0,sortable:!0},kid:{label:n("keys.list.table_headers.key_id"),sortable:!0},tags:{label:n("keys.list.table_headers.tags")},id:{label:n("keys.list.table_headers.id"),sortable:!0}},y=p,S=b(()=>{var i,m,B,q;let z=`${a.config.apiBaseUrl}${Ke.list[a.config.app][a.config.keySetId?"forKeySet":"all"]}`;return a.config.app==="konnect"?z=z.replace(/{controlPlaneId}/gi,((i=a.config)==null?void 0:i.controlPlaneId)||"").replace(/{keySetId}/gi,((m=a.config)==null?void 0:m.keySetId)||""):a.config.app==="kongManager"&&(z=z.replace(/{workspace}/gi,((B=a.config)==null?void 0:B.workspace)||"").replace(/{keySetId}/gi,((q=a.config)==null?void 0:q.keySetId)||"")),z}),T=x(""),v=b(()=>{const i=a.config.app==="konnect"||a.config.isExactMatch;if(i)return{isExactMatch:i,placeholder:n("keys.search.placeholder")};const m={name:p.name};return{isExactMatch:i,fields:m,schema:a.config.filterSchema}}),{fetcher:F,fetcherState:c}=gt(a.config,S.value),d=()=>{T.value=""},r=()=>{h.value++},k=x(""),I=b(()=>c.value.status===j.Loading),$=b(()=>{var i;return c.value.status===j.Idle&&!!((i=c.value.response)!=null&&i.data.length)}),M=b(()=>!I.value&&($.value||!!T.value)),U=(i,m)=>{const B=i.id;if(!m(B)){J(i,"id");return}D(i,"id")},_=(i,m)=>{const B=JSON.stringify(i);if(!m(B)){l("copy:error",{entity:i,message:n("keys.errors.copy")});return}l("copy:success",{entity:i,message:n("keys.copy.success_brief")})},P=(i,m,B)=>{const{type:q}=i;q==="success"?D(m,B):J(m,B)},D=(i,m)=>{l("copy:success",{entity:i,field:m,message:n("keys.copy.success",{val:i[m]})})},J=(i,m)=>{l("copy:error",{entity:i,field:m,message:n("keys.errors.copy")})},H=async i=>{var m;await((m=a.canRetrieve)==null?void 0:m.call(a,i))&&o.push(a.config.getViewRoute(i.id))},St=i=>({label:n("keys.actions.view"),to:a.config.getViewRoute(i)}),_t=i=>({label:n("keys.actions.edit"),to:a.config.getEditRoute(i)}),W=x(void 0),te=x(!1),ae=x(!1),ve=x(""),Ct=mt(a.config,S.value),It=i=>{W.value=i,te.value=!0},Pt=()=>{te.value=!1},Tt=async()=>{var i,m,B;if((i=W.value)!=null&&i.id){ae.value=!0;try{await g.delete(Ct(W.value.id)),ae.value=!1,te.value=!1,h.value++,l("delete:success",W.value)}catch(q){ve.value=((B=(m=q.response)==null?void 0:m.data)==null?void 0:B.message)||q.message||n("keys.errors.delete"),l("error",q)}finally{ae.value=!1}}};pe(I,i=>{l("loading",i)},{immediate:!0}),pe(c,i=>{if(i.status===j.Error){k.value=n("keys.errors.general"),l("error",i.error);return}k.value=""});const de=x({ctaPath:a.config.createRoute,ctaText:void 0,message:n("keys.list.empty_state.description"),title:n("keys.title")});return be(async()=>{await a.canCreate()&&(de.value.title=n("keys.list.empty_state.title"),de.value.ctaText=n("keys.actions.create"))}),(i,m)=>{const B=K("KButton"),q=K("CopyUuid"),z=K("KBadge"),xt=K("KTruncate"),Y=K("KDropdownItem"),ke=K("KClipboardProvider");return E(),O("div",ht,[f(s(Ge),{"disable-pagination-page-jump":"","disable-sorting":s(w),"empty-state-options":de.value,"enable-entity-actions":"","error-message":k.value,fetcher:s(F),"fetcher-cache-key":h.value,"is-loading":s(I),"pagination-type":"offset","preferences-storage-key":"kong-ui-entities-keys-list",query:T.value,"table-headers":s(y),onClearSearchInput:d,"onClick:row":m[2]||(m[2]=C=>H(C)),onSort:r},ye({"toolbar-filter":u(()=>[le(f(s(yt),{modelValue:T.value,"onUpdate:modelValue":m[0]||(m[0]=C=>T.value=C),config:s(v)},null,8,["modelValue","config"]),[[ne,s(M)]])]),name:u(({rowValue:C})=>[R("b",null,V(C??"-"),1)]),kid:u(({row:C,rowValue:N})=>[f(q,{notify:Z=>P(Z,C,"kid"),uuid:N},null,8,["notify","uuid"])]),tags:u(({rowValue:C})=>[(C==null?void 0:C.length)>0?(E(),L(xt,{key:0},{default:u(()=>[(E(!0),O(we,null,fe(C,N=>(E(),L(z,{key:N,onClick:m[1]||(m[1]=Et(()=>{},["stop"]))},{default:u(()=>[A(V(N),1)]),_:2},1024))),128))]),_:2},1024)):(E(),O("span",vt,"-"))]),id:u(({row:C,rowValue:N})=>[f(q,{notify:Z=>P(Z,C,"id"),uuid:N},null,8,["notify","uuid"])]),actions:u(({row:C})=>[f(ke,null,{default:u(({copyToClipboard:N})=>[f(Y,{"data-testid":"action-entity-copy-id",onClick:Z=>U(C,N)},{default:u(()=>[A(V(s(n)("keys.actions.copy_id")),1)]),_:2},1032,["onClick"])]),_:2},1024),f(ke,null,{default:u(({copyToClipboard:N})=>[f(Y,{"data-testid":"action-entity-copy-json",onClick:Z=>_(C,N)},{default:u(()=>[A(V(s(n)("keys.actions.copy_json")),1)]),_:2},1032,["onClick"])]),_:2},1024),f(s(ee),{"auth-function":()=>e.canRetrieve(C)},{default:u(()=>[f(Y,{"data-testid":"action-entity-view","has-divider":"",item:St(C.id)},null,8,["item"])]),_:2},1032,["auth-function"]),f(s(ee),{"auth-function":()=>e.canEdit(C)},{default:u(()=>[f(Y,{"data-testid":"action-entity-edit",item:_t(C.id)},null,8,["item"])]),_:2},1032,["auth-function"]),f(s(ee),{"auth-function":()=>e.canDelete(C)},{default:u(()=>[f(Y,{"data-testid":"action-entity-delete","has-divider":"","is-dangerous":"",onClick:N=>It(C)},{default:u(()=>[A(V(s(n)("keys.actions.delete")),1)]),_:2},1032,["onClick"])]),_:2},1032,["auth-function"])]),_:2},[s(M)?{name:"toolbar-button",fn:u(()=>[f(s(ee),{"auth-function":()=>e.canCreate()},{default:u(()=>[f(B,{appearance:"primary","data-testid":"toolbar-add-key",icon:"plus",to:e.config.createRoute},{default:u(()=>[A(V(s(n)("keys.list.toolbar_actions.new_key")),1)]),_:1},8,["to"])]),_:1},8,["auth-function"])]),key:"0"}:void 0]),1032,["disable-sorting","empty-state-options","error-message","fetcher","fetcher-cache-key","is-loading","query","table-headers"]),f(s(Xe),{"action-pending":ae.value,description:s(n)("keys.delete.description"),"entity-name":W.value&&(W.value.name||W.value.id),"entity-type":s(ge).Key,error:ve.value,"need-confirm":!1,title:s(n)("keys.delete.title"),visible:te.value,onCancel:Pt,onProceed:Tt},null,8,["action-pending","description","entity-name","entity-type","error","title","visible"])])}}}),bt=(e,l)=>{const t=e.__vccOpts||e;for(const[a,n]of l)t[a]=n;return t},wt=bt(kt,[["__scopeId","data-v-2fb68fb7"]]);let he;he={class:"keys-listing pt-4"},Ce=G({__name:"List",props:{keySetId:{type:String,required:!1,default:""}},setup(e){const l=e,t=At("rbac"),{createRedirectRouteQuery:a,redirectPath:n,createPostDeleteRouteQuery:o}=Ut(),g=Ft(),h=$t(),{workspace:w}=Mt(h),p=Rt(),y=b(()=>g.name!=="keys"),S=b(()=>y.value?`key-sets/${l.keySetId}/keys`:"keys"),T=b(()=>({name:{type:"text"}})),v=b(()=>y.value?Lt({$route:g,path:`/${w.value}/keys/keys/create`,query:{entity_type:"set_id",entity_id:l.keySetId,...a()},redirect:n,fields:{set_id:l.keySetId}}):{name:"create-keys"}),F=b(()=>P=>({name:"show-keys",params:{workspace:w.value,id:P},query:{...a(),...o(),keySetId:l.keySetId}})),c=b(()=>P=>({name:"update-keys",params:{workspace:w.value,id:P},query:{...a(),...o(),keySetId:l.keySetId}})),d=Bt({...Nt(),keySetId:l.keySetId,createRoute:v,getViewRoute:F,getEditRoute:c,filterSchema:T}),r=b(()=>()=>re(t,{path:`${S.value}`,action:"create"})),k=b(()=>P=>re(t,{path:`${S.value}/${P.id}`,action:"read"})),I=b(()=>P=>re(t,{path:`${S.value}/${P.id}`,action:"update"})),$=b(()=>P=>re(t,{path:`${S.value}/${P.id}`,action:"delete"})),{onCopySuccess:M,onCopyError:U}=Ot(),_=P=>{p.notify({message:`${P.name??P.id} Key successfully deleted!`,type:"success"})};return(P,D)=>(E(),O("section",he,[f(s(wt),{config:d,"can-create":s(r),"can-delete":s($),"can-edit":s(I),"can-retrieve":s(k),"onCopy:success":s(M),"onCopy:error":s(U),"onDelete:success":_},null,8,["config","can-create","can-delete","can-edit","can-retrieve","onCopy:success","onCopy:error"])]))}})});export{Ht as __tla,Ce as default};