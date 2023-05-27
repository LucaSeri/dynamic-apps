/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{_ as P,z as E,J as $,a4 as S,r,c,l as n,b as u,w as e,o,h as v,d as i,__tla as A}from"./index.84d84090.3_3_0_0.js";import{E as b,__tla as x}from"./EntityConfiguration.03651df4.3_3_0_0.js";import{R as D,__tla as K}from"./RbacPermMixin.3a5f32ef.3_3_0_0.js";import{p as M}from"./Consumer_Groups.f12ec9dd.3_3_0_0.js";import{E as q,__tla as B}from"./EntityMixin.2764673d.3_3_0_0.js";import{R as G}from"./RedirectMixin.efeb36f2.3_3_0_0.js";import{__tla as Q}from"./monaco-editor.90904fcf.3_3_0_0.js";import{__tla as V}from"./EntityToggleBadge.6a1cd1fb.3_3_0_0.js";import{__tla as z}from"./ConfirmModalDialog.af276128.3_3_0_0.js";import"./icon-help.699f8c28.3_3_0_0.js";import"./typedefs.6c779761.3_3_0_0.js";import"./transform.db23dc95.3_3_0_0.js";import"./marked.esm.77963db0.3_3_0_0.js";import{__tla as H}from"./EntityButton.1838e0e9.3_3_0_0.js";import{__tla as I}from"./EntityFilter.bf4158bc.3_3_0_0.js";let l,J=Promise.all([(()=>{try{return A}catch{}})(),(()=>{try{return x}catch{}})(),(()=>{try{return K}catch{}})(),(()=>{try{return B}catch{}})(),(()=>{try{return Q}catch{}})(),(()=>{try{return V}catch{}})(),(()=>{try{return z}catch{}})(),(()=>{try{return H}catch{}})(),(()=>{try{return I}catch{}})()]).then(async()=>{const m={name:"ConsumerGroupShow",components:{EntityConfiguration:b},mixins:[q,D,G],data(){return{record:null,policyConfig:{},configSchema:M,redirectRouteAfterDelete:{name:"consumer_groups"}}},computed:{...E($,["workspace"]),resourceEndpoint(){return`consumer_groups/${this.id}`},id(){return this.$route.params.id},editRoute(){return{name:"create-consumer-groups-policy"}}},mounted(){return this.fetchRecord()},methods:{fetchRecord(){return this.$api.findRecord("consumer_groups",encodeURIComponent(this.id)).then(t=>{this.record=t.data.consumer_group,this.policyConfig=t.data.plugins&&t.data.plugins[0].config,this.policyConfig&&(this.policyConfig.id=this.id)}).catch(S(this.$router,404,"/404",{replace:!0}))},handleEdit(){this.$router.push({name:this.editRoute.name,params:this.editRoute.params||{id:this.record.id,returnLink:this.$route.fullPath},query:{...this.editRoute.query,...this.createRedirectRouteQuery(),...this.createPostDeleteRouteQuery()}})},confirmDelete(){this.deleteModalModel={record:this.record}}}},d={class:"consumer-group-policy-view"},p={key:1},_=i(" Please add rate limit Policy "),h=i(" The rate limit policy for this consumer group "),y=i(" + Add Consumer Groups Policy ");function f(t,L,T,U,a,s){const g=r("EntityConfiguration"),R=r("KButton"),C=r("KEmptyState"),k=r("RbacValidate");return o(),c("section",d,[a.policyConfig?(o(),n(g,{key:0,"config-schema":a.configSchema,"header-title":"Policy",record:a.policyConfig,"edit-route":s.editRoute,entity:"consumer_groups","entity-name":"Policy","flatten-actions":""},null,8,["config-schema","record","edit-route"])):(o(),c("section",p,[u(k,{restricted:[{path:`/consumer_groups/${s.id}/overrides/plugins/rate-limiting-advanced`,actions:["create"]}],workspace:t.workspace},{default:e(({isAllowed:w})=>[u(C,{"cta-is-hidden":""},{title:e(()=>[_]),message:e(()=>[h]),cta:e(()=>[w?(o(),n(R,{key:0,to:{name:"create-consumer-groups-policy"},appearance:"primary"},{default:e(()=>[y]),_:1})):v("",!0)]),_:2},1024)]),_:1},8,["restricted","workspace"])]))])}l=P(m,[["render",f]])});export{J as __tla,l as default};