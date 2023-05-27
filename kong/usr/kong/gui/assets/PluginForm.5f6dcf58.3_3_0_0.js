/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{_ as g,H as P,a4 as o,r as u,c as f,b as m,o as y,__tla as R}from"./index.84d84090.3_3_0_0.js";import{N as F,__tla as $}from"./NativeEntityForm.f002aa47.3_3_0_0.js";import{p as c}from"./plugins.f651ca50.3_3_0_0.js";import{R as b}from"./RedirectMixin.efeb36f2.3_3_0_0.js";import{__tla as E}from"./monaco-editor.90904fcf.3_3_0_0.js";import{__tla as I}from"./ConfirmModalDialog.af276128.3_3_0_0.js";import{__tla as S}from"./EntityDeleteModal.673d985c.3_3_0_0.js";import{__tla as v}from"./EntityMixin.2764673d.3_3_0_0.js";import{__tla as x}from"./EntityButton.1838e0e9.3_3_0_0.js";import{__tla as T}from"./EntityFilter.bf4158bc.3_3_0_0.js";import"./typedefs.6c779761.3_3_0_0.js";let h,C=Promise.all([(()=>{try{return R}catch{}})(),(()=>{try{return $}catch{}})(),(()=>{try{return E}catch{}})(),(()=>{try{return I}catch{}})(),(()=>{try{return S}catch{}})(),(()=>{try{return v}catch{}})(),(()=>{try{return x}catch{}})(),(()=>{try{return T}catch{}})()]).then(async()=>{const l={name:"ConsumerPluginForm",components:{NativeEntityForm:F,PageHeader:P},mixins:[b],data(){return{record:null}},computed:{consumerPluginType(){return this.$route.params.type||this.$route.params.plugin},consumerPluginId(){return this.$route.params.consumerPluginId||this.$route.params.pluginId},consumerPlugin(){return c[this.consumerPluginType]||{}},entityPath(){return`consumers/${encodeURIComponent(this.$route.params.id)}${this.consumerPlugin.endpoint}`},isEditing(){return Boolean(this.consumerPluginId)},buttonText(){return this.isEditing?"Save":"Create"},title(){return this.isEditing?`Edit ${this.consumerPlugin.name||""}`:`Create ${this.consumerPlugin.name||""}`},pluginSchemaFromFile(){return c[this.consumerPlugin.plugin]},schema(){return this.pluginSchemaFromFile&&this.pluginSchemaFromFile.schema},schemaEndpoint(){return this.pluginSchemaFromFile&&this.pluginSchemaFromFile.schemaEndpoint},redirectRoute(){return this.redirectPath?{path:this.redirectPath}:{name:"show-consumer",hash:"#credentials",params:{id:this.$route.params.id}}}},mounted(){document.title=this.title},methods:{findRecord(){return this.$api.findRecord(this.entityPath,this.consumerPluginId).catch(o(this.$router,404,"/404",{replace:!0}))},createRecord(){return this.$api.createRecord(this.entityPath,this.record).then(o(this.$router,201,this.redirectRoute))},updateRecord(){return this.$api.updateRecord(this.entityPath,this.consumerPluginId,this.record).then(o(this.$router,200,this.redirectRoute))},deleteRecord(){return this.$api.deleteRecord(this.entityPath,this.consumerPluginId).then(o(this.$router,204,this.redirectRoute))},onFormLoad(){return Promise.resolve(this.consumerPluginId?this.findRecord():!1)},onFormSubmission(e){return Object.keys(e).forEach(r=>{var i,s,t;const n=(s=(i=this.schema.fields)==null?void 0:i.find)==null?void 0:s.call(i,a=>!!a[r]);e[r]===null&&((t=n==null?void 0:n[r])==null?void 0:t.submitWhenNull)===!1&&delete e[r]}),this.record=e,this.isEditing?this.updateRecord():this.createRecord()}}},d={class:"consumer-plugin-form form-container"};function p(e,r,n,i,s,t){const a=u("PageHeader"),_=u("NativeEntityForm");return y(),f("section",d,[m(a,{title:t.title},null,8,["title"]),m(_,{"is-editing":t.isEditing,"entity-name":t.consumerPlugin.name,"resource-endpoint":t.entityPath,schema:t.schema,"schema-endpoint":t.schemaEndpoint,"show-confirmation-dialog":t.isEditing,"prevent-submission-before-change":t.isEditing,"button-text":t.buttonText,"on-load":t.onFormLoad,"on-submit":t.onFormSubmission,"on-delete":t.deleteRecord},null,8,["is-editing","entity-name","resource-endpoint","schema","schema-endpoint","show-confirmation-dialog","prevent-submission-before-change","button-text","on-load","on-submit","on-delete"])])}h=g(l,[["render",p]])});export{C as __tla,h as default};