/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{_ as N,H as $,z as P,J as R,a4 as z,r as e,c as B,a as r,b as a,l as D,w as s,h as H,o as _,d as c,t as O,p as k,e as x,__tla as C}from"./index.84d84090.3_3_0_0.js";import{B as J,__tla as S}from"./Breadcrumbs.6127883e.3_3_0_0.js";import{E as T,__tla as I}from"./EntityMixin.2764673d.3_3_0_0.js";import{E as K,__tla as F}from"./EntityList.9d5d453d.3_3_0_0.js";import{E as M,__tla as V}from"./EntityConfiguration.03651df4.3_3_0_0.js";import{_ as j}from"./icon-empty-table.220603e0.3_3_0_0.js";import{__tla as q}from"./monaco-editor.90904fcf.3_3_0_0.js";import{__tla as A}from"./EntityButton.1838e0e9.3_3_0_0.js";import{__tla as G}from"./EntityFilter.bf4158bc.3_3_0_0.js";import{__tla as Q}from"./preferences.ea825a88.3_3_0_0.js";import{__tla as U}from"./EntityListEmptyState.9b958bba.3_3_0_0.js";import{__tla as W}from"./EntityToggleBadge.6a1cd1fb.3_3_0_0.js";import{__tla as X}from"./ConfirmModalDialog.af276128.3_3_0_0.js";import{__tla as Y}from"./EntityDeleteModal.673d985c.3_3_0_0.js";import"./RedirectMixin.efeb36f2.3_3_0_0.js";import"./icon-help.699f8c28.3_3_0_0.js";let m,Z=Promise.all([(()=>{try{return C}catch{}})(),(()=>{try{return S}catch{}})(),(()=>{try{return I}catch{}})(),(()=>{try{return F}catch{}})(),(()=>{try{return V}catch{}})(),(()=>{try{return q}catch{}})(),(()=>{try{return A}catch{}})(),(()=>{try{return G}catch{}})(),(()=>{try{return Q}catch{}})(),(()=>{try{return U}catch{}})(),(()=>{try{return W}catch{}})(),(()=>{try{return X}catch{}})(),(()=>{try{return Y}catch{}})()]).then(async()=>{const d={name:"PortalRole",components:{PageHeader:$,Breadcrumbs:J,EntityList:K,EntityConfiguration:M},mixins:[T],data(){return{record:null}},computed:{...P(R,["workspace"]),id(){return this.record&&this.record.id||this.$route.params.id},developerListOptions(){return{entityName:"Developer",entity:"developers",params:{role:this.roleName},size:50,helpMessage:"-",fields:{email:{searchable:!0},full_name:{label:"Full Name"}}}},isLoading(){return!this.record},title(){return this.isLoading?"Loading...":`${this.record.name} role`},developerTitle(){return this.isLoading?this.title:`Developers with ${this.title}`},roleName(){return this.record&&this.record.name}},mounted(){return this.fetchRecord()},methods:{fetchRecord(){return this.$api.findRecord("developers/roles",this.id).then(t=>{this.record=t.data,delete this.record.permissions}).catch(z(this.$router,404,"/404",{replace:!0}))}}},p=t=>(k("data-v-1489b0e5"),t=t(),x(),t),h={class:"portal-role-view"},u={class:"role-details"},f={class:"developer-list"},y=p(()=>r("div",{class:"card-icon mb-4"},[r("img",{src:j,alt:""})],-1)),v=c(" No Developers ");function g(t,tt,et,rt,i,o){const b=e("Breadcrumbs"),l=e("PageHeader"),w=e("EntityConfiguration"),E=e("KEmptyState"),L=e("EntityList");return _(),B("article",h,[r("section",u,[a(b),a(l,{title:o.title},null,8,["title"]),a(w,{record:i.record,"edit-route":{name:"update-portal-role"},entity:"developers/roles","flatten-actions":""},null,8,["record"])]),r("section",null,[r("section",f,[a(l,{size:5,title:o.developerTitle},null,8,["title"]),i.record?(_(),D(L,{key:0,options:o.developerListOptions,"show-delete-action":!1,"show-update-action":!1,"show-view-action":!0},{full_name:s(({item:n})=>[c(O(n.meta&&JSON.parse(n.meta).full_name),1)]),"empty-state":s(()=>[a(E,{"cta-is-hidden":""},{title:s(()=>[y,v]),_:1})]),_:1},8,["options"])):H("",!0)])])])}m=N(d,[["render",g],["__scopeId","data-v-1489b0e5"]])});export{Z as __tla,m as default};
