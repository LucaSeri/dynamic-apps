/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{_ as h,H as y,z as b,Q as g,r,c as F,b as e,w as o,o as i,l as E,h as v,d as C,__tla as S}from"./index.84d84090.3_3_0_0.js";import{N as x,__tla as A}from"./NativeEntityForm.f002aa47.3_3_0_0.js";import{F as D,__tla as k}from"./FormPage.4b74a91a.3_3_0_0.js";import{s as w}from"./CA_Certificate.5cceca91.3_3_0_0.js";import{F as L,__tla as N}from"./FormActions.1911524f.3_3_0_0.js";import{F as H}from"./FormActionsMixin.54cda7d6.3_3_0_0.js";import{__tla as P}from"./monaco-editor.90904fcf.3_3_0_0.js";import{__tla as R}from"./ConfirmModalDialog.af276128.3_3_0_0.js";import{__tla as j}from"./EntityDeleteModal.673d985c.3_3_0_0.js";import{__tla as z}from"./EntityMixin.2764673d.3_3_0_0.js";import{__tla as G}from"./EntityButton.1838e0e9.3_3_0_0.js";import{__tla as K}from"./EntityFilter.bf4158bc.3_3_0_0.js";import"./RedirectMixin.efeb36f2.3_3_0_0.js";import"./typedefs.6c779761.3_3_0_0.js";import"./transform.db23dc95.3_3_0_0.js";import"./marked.esm.77963db0.3_3_0_0.js";let n,O=Promise.all([(()=>{try{return S}catch{}})(),(()=>{try{return A}catch{}})(),(()=>{try{return k}catch{}})(),(()=>{try{return N}catch{}})(),(()=>{try{return P}catch{}})(),(()=>{try{return R}catch{}})(),(()=>{try{return j}catch{}})(),(()=>{try{return z}catch{}})(),(()=>{try{return G}catch{}})(),(()=>{try{return K}catch{}})()]).then(async()=>{const s={name:"CACertificateForm",components:{NativeEntityForm:x,PageHeader:y,FormActions:L},mixins:[D,H],props:{redirectRouteNames:{type:Object,default:()=>({})}},data(){return{resourceEndpoint:"ca_certificates",schema:w}},computed:{id(){return this.$route.params.id},redirectRoute(){return{name:"ca_certificates"}},...b(g,{getSupportDocs:"entityDoc"}),docsLink(){return this.getSupportDocs("ca-certificate")}}},c={class:"certificate-form form-container"},m=C(" View documentation ");function _(t,Q,T,V,a,l){const d=r("KExternalLink"),u=r("FormActions"),f=r("PageHeader"),p=r("NativeEntityForm");return i(),F("section",c,[e(f,null,{default:o(()=>[e(d,{href:l.docsLink},{default:o(()=>[m]),_:1},8,["href"]),t.isEditing?(i(),E(u,{key:0,"primary-disabled":t.isSaveActionDisabled,onSave:t.handleFormSave,onCancel:t.handleFormCancel},null,8,["primary-disabled","onSave","onCancel"])):v("",!0)]),_:1}),e(p,{ref:"form","is-editing":t.isEditing,"show-confirmation-dialog":t.isEditing,"prevent-submission-before-change":t.isEditing,schema:a.schema,"button-text":t.buttonText,"on-load":t.onFormLoad,"on-submit":t.onFormSubmit,"on-delete":t.onDeleteWhenEditing,"resource-endpoint":a.resourceEndpoint,"redirect-route-after-delete":{name:"ca_certificates"},entity:"ca_certificates","entity-name":"CA Certificate"},null,8,["is-editing","show-confirmation-dialog","prevent-submission-before-change","schema","button-text","on-load","on-submit","on-delete","resource-endpoint"])])}n=h(s,[["render",_]])});export{O as __tla,n as default};