/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{_ as y,H as f,z as g,Q as b,Y as E,aF as F,r as e,c as S,b as a,w as i,o as n,l as k,h as v,d as K,__tla as L}from"./index.84d84090.3_3_0_0.js";import{N as x,__tla as D}from"./NativeEntityForm.f002aa47.3_3_0_0.js";import{F as w,__tla as C}from"./FormActions.1911524f.3_3_0_0.js";import{F as A,__tla as N}from"./FormPage.4b74a91a.3_3_0_0.js";import{F as H}from"./FormActionsMixin.54cda7d6.3_3_0_0.js";import{s as P}from"./KeySets.b0e1707f.3_3_0_0.js";import{__tla as V}from"./monaco-editor.90904fcf.3_3_0_0.js";import{__tla as $}from"./ConfirmModalDialog.af276128.3_3_0_0.js";import{__tla as z}from"./EntityDeleteModal.673d985c.3_3_0_0.js";import{__tla as I}from"./EntityMixin.2764673d.3_3_0_0.js";import{__tla as Q}from"./EntityButton.1838e0e9.3_3_0_0.js";import{__tla as T}from"./EntityFilter.bf4158bc.3_3_0_0.js";import"./RedirectMixin.efeb36f2.3_3_0_0.js";import"./typedefs.6c779761.3_3_0_0.js";import"./transform.db23dc95.3_3_0_0.js";import"./marked.esm.77963db0.3_3_0_0.js";let s,W=Promise.all([(()=>{try{return L}catch{}})(),(()=>{try{return D}catch{}})(),(()=>{try{return C}catch{}})(),(()=>{try{return N}catch{}})(),(()=>{try{return V}catch{}})(),(()=>{try{return $}catch{}})(),(()=>{try{return z}catch{}})(),(()=>{try{return I}catch{}})(),(()=>{try{return Q}catch{}})(),(()=>{try{return T}catch{}})()]).then(async()=>{const m={name:"KeySetsForm",components:{NativeEntityForm:x,PageHeader:f,FormActions:w},mixins:[A,H],data(){return{resourceEndpoint:"key-sets",record:null,schema:P}},computed:{...g(b,{getSupportDocs:"entityDoc"}),docsLink(){return this.getSupportDocs("key-sets")},id(){return this.$route.params.id},title(){if(!this.isEditing)return"Create Key Set";let t=E(this.record,"key-sets");return t?(F(t)&&(t=t.split("-")[0].trim()),`Edit Key Set: ${t}`):"Edit Key Set"}},methods:{formLoad(){return this.onFormLoad().then(t=>(this.record=t&&t.data,t))}}},c={class:"key-set-form form-container"},l=K(" View documentation ");function _(t,Y,j,q,o,r){const d=e("KExternalLink"),u=e("FormActions"),h=e("PageHeader"),p=e("NativeEntityForm");return n(),S("section",c,[a(h,{title:r.title},{default:i(()=>[a(d,{href:r.docsLink},{default:i(()=>[l]),_:1},8,["href"]),t.isEditing?(n(),k(u,{key:0,"primary-disabled":t.isSaveActionDisabled,onSave:t.handleFormSave,onCancel:t.handleFormCancel},null,8,["primary-disabled","onSave","onCancel"])):v("",!0)]),_:1},8,["title"]),a(p,{ref:"form","is-editing":t.isEditing,"show-confirmation-dialog":t.isEditing,"prevent-submission-before-change":t.isEditing,schema:o.schema,"button-text":t.buttonText,"on-load":r.formLoad,"on-submit":t.onFormSubmit,"on-delete":t.onDeleteWhenEditing,"resource-endpoint":o.resourceEndpoint,"schema-endpoint":"key_sets","redirect-route-after-delete":{name:"key-sets"},entity:"key-sets","entity-name":"Key Set"},null,8,["is-editing","show-confirmation-dialog","prevent-submission-before-change","schema","button-text","on-load","on-submit","on-delete","resource-endpoint"])])}s=y(m,[["render",_]])});export{W as __tla,s as default};