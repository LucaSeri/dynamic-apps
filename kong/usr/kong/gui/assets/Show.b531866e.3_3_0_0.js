/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{_ as w,X as P,z as l,Z as k,J as v,Y as A,aF as B,a4 as x,r,c as T,b as a,a as s,O as V,w as c,o as u,l as $,h as L,__tla as U}from"./index.84d84090.3_3_0_0.js";import{B as q,__tla as G}from"./Breadcrumbs.6127883e.3_3_0_0.js";import{D as Q,T as S,__tla as j}from"./TagsBlock.4b7d5635.3_3_0_0.js";import{E as H,__tla as I}from"./EntityDeleteModal.673d985c.3_3_0_0.js";import{E as O,__tla as z}from"./EntityConfiguration.03651df4.3_3_0_0.js";import{R as F,__tla as J}from"./RbacPermMixin.3a5f32ef.3_3_0_0.js";import{c as N}from"./Consumer_Groups.f12ec9dd.3_3_0_0.js";import{D as X,__tla as Y}from"./DetailContainer.85becad9.3_3_0_0.js";import{d as Z,B as K}from"./chartHelpers.1bf67333.3_3_0_0.js";import{E as W,__tla as tt}from"./EntityMixin.2764673d.3_3_0_0.js";import{R as et}from"./RedirectMixin.efeb36f2.3_3_0_0.js";import{__tla as rt}from"./monaco-editor.90904fcf.3_3_0_0.js";import{__tla as ot}from"./EntityToggleBadge.6a1cd1fb.3_3_0_0.js";import{__tla as at}from"./ConfirmModalDialog.af276128.3_3_0_0.js";import"./icon-help.699f8c28.3_3_0_0.js";import"./typedefs.6c779761.3_3_0_0.js";import"./transform.db23dc95.3_3_0_0.js";import"./marked.esm.77963db0.3_3_0_0.js";import{__tla as it}from"./EntityButton.1838e0e9.3_3_0_0.js";import{__tla as st}from"./EntityFilter.bf4158bc.3_3_0_0.js";let d,nt=Promise.all([(()=>{try{return U}catch{}})(),(()=>{try{return G}catch{}})(),(()=>{try{return j}catch{}})(),(()=>{try{return I}catch{}})(),(()=>{try{return z}catch{}})(),(()=>{try{return J}catch{}})(),(()=>{try{return Y}catch{}})(),(()=>{try{return tt}catch{}})(),(()=>{try{return rt}catch{}})(),(()=>{try{return ot}catch{}})(),(()=>{try{return at}catch{}})(),(()=>{try{return it}catch{}})(),(()=>{try{return st}catch{}})()]).then(async()=>{const m={name:"ConsumerGroupShow",components:{EntityConfiguration:O,Breadcrumbs:q,DetailsHeader:Q,DetailContainer:X,TagsBlock:S,EntityDeleteModal:H},mixins:[W,F,et],props:{entity:{type:Object,default:()=>({id:void 0,name:"Consumer Groups",path:"consumer_groups",rootPath:"consumer_groups",createRouteName:null})}},data(){return{record:null,headerTitle:"Consumers",formatDate:P,configSchema:N,infoTexts:{statusCodes:Z.statusCodesConsumer,codeDetail:K.routesByConsumerAndCode},lang:{DELETE:"Delete"},deleteModalModel:null,redirectRouteAfterDelete:{name:"consumer_groups"},hubViews:[{key:"show-consumer-group",label:"Configuration"},{key:"consumer-group-consumers",label:"Consumers"},{key:"consumer-group-policy",label:"Policy"}]}},computed:{...l(k,{config:"infoConfig"}),...l(v,["workspace"]),resourceEndpoint(){return this.entity.rootPath},id(){return this.record&&this.record.id||this.$route.params.id},isLoading(){return!this.record},title(){return this.isLoading?" ":this.record.username},titleMapping(){let e=A(this.record,"consumer_groups")||this.id;return B(e)&&(e=e.split("-")[0].trim()),{id:e}},entityQuery(){return this.record?{entity_id:this.id+","+(this.record.name||""),entity_type:"consumer_groups_id"}:{}},entityId(){return this.entity.id||this.$route.query.entity_id},actions(){return[{name:"Edit configuration",testAction:"action-edit",isAllowed:this.hasUpdatePerm,handler:this.handleEdit},{name:"Delete",divider:this.hasUpdatePerm,testAction:"action-delete",isAllowed:this.hasDeletePerm,dangerous:!0,handler:this.confirmDelete}]},editRoute(){return{name:"update-consumer-group"}}},mounted(){return this.fetchRecord()},methods:{fetchRecord(){return this.$api.findRecord("consumer_groups",encodeURIComponent(this.id)).then(e=>{this.record=e.data.consumer_group}).catch(x(this.$router,404,"/404",{replace:!0}))},handleEdit(){this.$router.push({name:this.editRoute.name,params:this.editRoute.params||{id:this.record.id,returnLink:this.$route.fullPath},query:{...this.editRoute.query,...this.createRedirectRouteQuery(),...this.createPostDeleteRouteQuery()}})},confirmDelete(){this.deleteModalModel={record:this.record}}}},_={class:"consumer-group-view"},h={class:"consumer-details"},p={class:"flex flex-col gap-2 mt-4"},y={class:"flex items-center justify-between"};function f(e,n,i,lt,t,o){const g=r("Breadcrumbs"),D=r("TagsBlock"),C=r("DetailsHeader"),R=r("EntityConfiguration"),E=r("DetailContainer"),M=r("EntityDeleteModal");return u(),T("article",_,[a(g,{"title-mapping":o.titleMapping},null,8,["title-mapping"]),s("section",h,[a(C,{title:o.title,record:t.record,entity:{...i.entity,id:o.id},actions:o.actions,"back-route":{name:"consumer_groups"}},V({_:2},[t.record?{name:"below-title",fn:c(()=>[s("div",p,[s("div",y,[t.record.tags&&t.record.tags.length?(u(),$(D,{key:0,tags:t.record.tags},null,8,["tags"])):L("",!0)])])])}:void 0]),1032,["title","record","entity","actions"])]),a(E,{entity:i.entity,items:t.hubViews,"entity-name":"service"},{"show-consumer-group":c(()=>[a(R,{"config-schema":t.configSchema,record:t.record,"edit-route":o.editRoute,entity:"consumer_groups","entity-name":"Consumer Groups","flatten-actions":""},null,8,["config-schema","record","edit-route"])]),_:1},8,["entity","items"]),a(M,{modelValue:t.deleteModalModel,"onUpdate:modelValue":n[0]||(n[0]=b=>t.deleteModalModel=b),entity:i.entity.rootPath,"redirect-route":t.redirectRouteAfterDelete,"entity-name":"consumers",class:"defaultModal"},null,8,["modelValue","entity","redirect-route"])])}d=w(m,[["render",f]])});export{nt as __tla,d as default};
