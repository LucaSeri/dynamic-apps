/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{_ as w,H as L,S as P,z as s,u as x,J as A,Q as H,r as t,c as T,l as D,w as e,h as v,b as a,o as l,a as K,d as r,__tla as E}from"./index.84d84090.3_3_0_0.js";import{E as B,__tla as Q}from"./EntityMixin.2764673d.3_3_0_0.js";import{_ as $,__tla as q}from"./L2Tabs.vue_vue_type_script_setup_true_lang.5ec63eb6.3_3_0_0.js";import{__tla as z}from"./monaco-editor.90904fcf.3_3_0_0.js";import{__tla as J}from"./EntityButton.1838e0e9.3_3_0_0.js";import{__tla as N}from"./EntityFilter.bf4158bc.3_3_0_0.js";let _,j=Promise.all([(()=>{try{return E}catch{}})(),(()=>{try{return Q}catch{}})(),(()=>{try{return q}catch{}})(),(()=>{try{return z}catch{}})(),(()=>{try{return J}catch{}})(),(()=>{try{return N}catch{}})()]).then(async()=>{const f={name:"CertificatesListPage",components:{PageHeader:L,SupportText:P,L2Tabs:$},mixins:[B],props:{hidePageHeader:{type:Boolean,default:!1}},data(){return{tabKey:"",tabs:[{key:"certificates",title:"Certificates"},{key:"ca_certificates",title:"CA Certificates"}]}},computed:{...s(x,{perms:"permissions"}),...s(A,["workspace"]),...s(H,{getSupportDocs:"entityDoc"}),canCreateCertificates(){return this.$rbac.isAllowed(this.perms,[{path:"/certificates",actions:["create"]}],this.workspace)},canCreateCACertificates(){return this.$rbac.isAllowed(this.perms,[{path:"/ca_certificates",actions:["create"]}],this.workspace)}}},p={class:"certificates-listing"},u=r(" Certificates "),h=r(" handle SSL/TLS termination for encrypted requests and "),d=r(" CA Certificates "),m=r(" validate client or server certificates. ");function y(i,c,C,F,n,G){const o=t("KExternalLink"),b=t("SupportText"),g=t("PageHeader"),S=t("L2Tabs");return l(),T("section",p,[C.hidePageHeader?v("",!0):(l(),D(g,{key:0,title:"Certificates"},{"below-title":e(()=>[a(b,null,{default:e(()=>[K("p",null,[a(o,{href:i.getSupportDocs("certificate")},{default:e(()=>[u]),_:1},8,["href"]),h,a(o,{href:i.getSupportDocs("ca-certificate")},{default:e(()=>[d]),_:1},8,["href"]),m])]),_:1})]),_:1})),a(S,{tabs:n.tabs,navigation:"name",onChanged:c[0]||(c[0]=k=>n.tabKey=k)},null,8,["tabs"])])}_=w(f,[["render",y]])});export{j as __tla,_ as default};
