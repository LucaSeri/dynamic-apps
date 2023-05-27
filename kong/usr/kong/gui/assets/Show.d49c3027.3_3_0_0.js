/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{_ as g,r as e,o as i,c as b,l,w as n,h as d,b as o,a as p,H as T,z as k,Z as I,J as $,a4 as B,__tla as H}from"./index.84d84090.3_3_0_0.js";import{E as P,__tla as U}from"./EntityButton.1838e0e9.3_3_0_0.js";import{E as q,__tla as z}from"./EntityRecordDetails.1dd06b67.3_3_0_0.js";import{K as G,__tla as M}from"./KEntityList.599bcd88.3_3_0_0.js";import{s as J}from"./AdminEndpoint.ee719c99.3_3_0_0.js";import{E as V,__tla as W}from"./EntityListEmptyState.9b958bba.3_3_0_0.js";import{__tla as Z}from"./monaco-editor.90904fcf.3_3_0_0.js";import{__tla as j}from"./KDataProvider.78c9bca8.3_3_0_0.js";import{__tla as F}from"./preferences.ea825a88.3_3_0_0.js";import{__tla as Q}from"./EntityDeleteModal.673d985c.3_3_0_0.js";import{__tla as X}from"./ConfirmModalDialog.af276128.3_3_0_0.js";import{__tla as Y}from"./EntityMixin.2764673d.3_3_0_0.js";import{__tla as tt}from"./EntityFilter.bf4158bc.3_3_0_0.js";import"./RedirectMixin.efeb36f2.3_3_0_0.js";let E,et=Promise.all([(()=>{try{return H}catch{}})(),(()=>{try{return U}catch{}})(),(()=>{try{return z}catch{}})(),(()=>{try{return M}catch{}})(),(()=>{try{return W}catch{}})(),(()=>{try{return Z}catch{}})(),(()=>{try{return j}catch{}})(),(()=>{try{return F}catch{}})(),(()=>{try{return Q}catch{}})(),(()=>{try{return X}catch{}})(),(()=>{try{return Y}catch{}})(),(()=>{try{return tt}catch{}})()]).then(async()=>{const R={components:{KEntityList:G},props:{id:{type:String,required:!1,default:null},isEditing:{type:Boolean,required:!1,default:!0}},emits:["resolve","confirmDeleteItem"],data(){return{endpointsUrl:"rbac/roles/:name_or_id/endpoints",tableSettings:{hasHover:!0,options:{headers:[{label:"",key:"negative",hideLabel:!0},{label:"Endpoint",key:"endpoint",sortable:!0},{label:"Actions",key:"actions",sortable:!0},{label:"",key:"customActions",hideLabel:!0}],data:[]}}}},computed:{entityListOptions(){return{entityName:"Endpoint",entity:this.endpointsUrl.replace(":name_or_id",this.id),sortKey:"endpoint",fields:{...J}}}}},w={class:"mt-2 endpoint-list"},v={key:0,class:"d-flex align-items-center"},O=p("i",{class:"text-danger material-icons"},"not_interested",-1),S=p("i",{class:"text-muted material-icons"},"done",-1);function C(t,m,_,K,a,r){const c=e("KTooltip"),u=e("KIcon"),h=e("KButton"),y=e("KEntityList");return i(),b("div",w,[_.id?(i(),l(y,{key:0,"table-settings":a.tableSettings,"entity-name":r.entityListOptions.entityName,"resource-url":r.entityListOptions.entity,"sort-key":r.entityListOptions.sortKey,"show-update-action":!1,onResolve:m[0]||(m[0]=s=>t.$emit("resolve",s))},{"entity-negative":n(({row:s})=>[s?(i(),b("div",v,[s.negative?(i(),l(c,{key:0,label:"[Negative] endpoint. Role will NOT be able to access this endpoint.",position:"top",alignment:"center"},{default:n(()=>[O]),_:1})):(i(),l(c,{key:1,label:"Role will have access to this endpoint",position:"top",alignment:"center"},{default:n(()=>[S]),_:1}))])):d("",!0)]),"entity-customActions":n(({row:s,rbac:f})=>[f.isAllowedToDelete&&_.isEditing?(i(),l(h,{key:0,class:"float-right delete",appearance:"btn-link",onClick:at=>t.$emit("confirmDeleteItem",s)},{icon:n(()=>[o(u,{"view-box":"0 0 18 18",icon:"trash",size:"18"})]),_:2},1032,["onClick"])):d("",!0)]),_:1},8,["table-settings","entity-name","resource-url","sort-key"])):d("",!0)])}const L=g(R,[["render",C]]),D={name:"TeamsRolesShow",components:{PageHeader:T,EntityRecordDetails:q,EntityButton:P,EndpointList:L,EntityListEmptyState:V},data(){return{record:null,endpoints:null,error:null,lang:{NO_RECORDS:"This role has no permissions",NO_RECORDS_MESSAGE:"to manage access to entities.",NO_RECORDS_CTA:"Add an endpoint"}}},computed:{...k(I,{config:"infoConfig"}),...k($,{workspace:t=>t.workspace??"default"}),id(){return this.record&&this.record.id||this.$route.params.id},breadcrumbItems(){return[{key:"teams-overview",to:{path:"/teams",hash:"#roles"},title:"Team Roles",text:"Teams"},{key:"workspace-roles",to:{name:"workspace-roles",params:{workspace:this.workspace}},title:`${this.workspace} Roles`,text:"Workspace Roles"}]},title(){return this.record&&this.record.name||null}},mounted(){return this.fetchRecord()},methods:{fetchRecord(){return this.$api.findRecord("rbac/roles",encodeURIComponent(this.id)).then(t=>{delete t.data.is_default,this.record=t.data}).catch(B(this.$router,404,"/workspace/404",{replace:!0}))},endpointsResolved(t){this.endpoints=t}}},x={class:"container"},N=p("div",{class:"mt-4 mb-3"},[p("h5",null,"Permissions")],-1);function A(t,m,_,K,a,r){const c=e("KBreadcrumbs"),u=e("EntityButton"),h=e("PageHeader"),y=e("EntityRecordDetails"),s=e("EndpointList"),f=e("EntityListEmptyState");return i(),b("article",x,[o(c,{items:r.breadcrumbItems},null,8,["items"]),o(h,{title:r.title},{default:n(()=>[o(u,{workspace:t.workspace,"restricted-actions":["update"],"button-props":{appearance:"outline"},"path-name":"teams-update-role",text:"Edit Role",entity:"rbac/roles/*"},null,8,["workspace"])]),_:1},8,["title"]),o(y,{record:a.record},null,8,["record"]),N,o(s,{id:r.id,"is-editing":!1,onResolve:r.endpointsResolved},null,8,["id","onResolve"]),a.endpoints&&a.endpoints.length===0?(i(),l(f,{key:0,"rbac-settings":{workspace:t.workspace,restricted:[{path:"/rbac/roles/*/endpoints",actions:["read"]}]},title:a.lang.NO_RECORDS,message:a.lang.NO_RECORDS_MESSAGE,"cta-text":a.lang.NO_RECORDS_CTA,"cta-path":{name:"teams-update-role"}},null,8,["rbac-settings","title","message","cta-text"])):d("",!0)])}E=g(D,[["render",A]])});export{et as __tla,E as default};