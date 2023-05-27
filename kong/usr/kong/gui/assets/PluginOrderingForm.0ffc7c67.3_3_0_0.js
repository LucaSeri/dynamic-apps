/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{ag as ie,n as ce,Z as oe,C as x,B as $,ax as ue,r as v,c as y,b as i,w as d,H as de,R as C,U as B,ay as D,l as pe,h as ge,a as p,aD as me,y as fe,g as _e,aw as ve,o as f,t as P,d as g,_ as ye,__tla as ke}from"./index.84d84090.3_3_0_0.js";import{u as he,__tla as be}from"./useDocLink.c461e3a3.3_3_0_0.js";import{p as K,__tla as $e}from"./PluginMeta.6ce8b2b4.3_3_0_0.js";import{__tla as Ce}from"./monaco-editor.90904fcf.3_3_0_0.js";import{__tla as De}from"./entities-plugins.es.44654093.3_3_0_0.js";let O,Pe=Promise.all([(()=>{try{return ke}catch{}})(),(()=>{try{return be}catch{}})(),(()=>{try{return $e}catch{}})(),(()=>{try{return Ce}catch{}})(),(()=>{try{return De}catch{}})()]).then(async()=>{const U={class:"plugins-ordering-form form-container"},A={class:"ordering-form-link"},L=g(" Dynamic plugin ordering "),R=g(" View documentation "),E={class:"ordering-form-link"},I=g(" Default plugin execution ordering "),V=g(" View documentation "),z=["data-testid"],F={class:"ordering-token"},H={class:"ordering-token-desc"},Z=["for"],j=["data-testid"],q=g(" Add Plugin + "),G={class:"ordering-form-footer"},J=g(" Update "),N=g(" Cancel "),Q=ie({__name:"PluginOrderingForm",setup(we){const{dynamicOrderingDocLink:T,defaultOrderingDocLink:W}=he(),X=ce(),b=oe(),_=me(),w=ve(),Y=x(()=>{var a;return Object.keys(((a=b==null?void 0:b.infoPlugins)==null?void 0:a.available)||[]).filter(e=>K[e]).map(e=>({label:K[e].name,value:e})).sort((e,s)=>e.label.localeCompare(s.label))}),m=fe("api"),r=$({}),k=$(""),h=$("plugins");ue(()=>{m==null||m.findRecord("plugins",_.params.id).then(({data:a})=>{const{service:e,route:s,consumer:n,ordering:c}=a;r.value=c??{},n!=null&&n.id?h.value=`consumers/${n.id}/plugins`:e!=null&&e.id?h.value=`services/${e.id}/plugins`:s!=null&&s.id&&(h.value=`routes/${s.id}/plugins`)})});const M=x(()=>{var a,e;return[{label:"Before access",key:"before",desc:"Dynamic plugin ordering for 'before.access' phase",orderings:((a=r.value.before)==null?void 0:a.access)||[]},{label:"After access",key:"after",desc:"Dynamic plugin ordering for 'after.access' phase",orderings:((e=r.value.after)==null?void 0:e.access)||[]}]}),S=(a,e)=>Y.value.map(s=>{var t,u;const n=s.value===_.params.plugin,c=[...((t=r.value.before)==null?void 0:t.access)??[],...((u=r.value.after)==null?void 0:u.access)??[]].some(l=>l===s.value&&l!==r.value[a].access[e]);return{...s,disabled:n||c}}),ee=(a,e,s)=>{r.value[a].access[e]=s},ae=(a,e)=>{r.value[a].access.splice(e,1)},se=a=>{r.value[a]||(r.value[a]={access:[]}),r.value[a].access.push("")},le=()=>{var n,c,t,u;const a={},e=((c=(n=r.value.before)==null?void 0:n.access)==null?void 0:c.filter(Boolean))||[],s=((u=(t=r.value.after)==null?void 0:t.access)==null?void 0:u.filter(Boolean))||[];e.length&&(a.before={access:e}),s.length&&(a.after={access:s}),m==null||m.updateRecord(h.value,_.params.id,{ordering:e.length||s.length?a:null}).then(()=>{k.value="",X.notify({type:"success",message:"Plugin ordering successfully updated"}),w.push({name:"plugin-ordering",params:{..._.params}})}).catch(l=>{k.value=_e(l)})},re=()=>{w.push({name:"plugin-ordering",params:{..._.params}})};return(a,e)=>{const s=v("KExternalLink"),n=v("KSelect"),c=v("KIcon"),t=v("KButton"),u=v("KAlert");return f(),y("section",U,[i(de,{title:"Edit dynamic ordering"},{"below-title":d(()=>[p("p",A,[L,i(s,{href:D(T),class:"ml-2"},{default:d(()=>[R]),_:1},8,["href"])]),p("p",E,[I,i(s,{href:D(W),class:"ml-2"},{default:d(()=>[V]),_:1},8,["href"])])]),_:1}),(f(!0),y(C,null,B(D(M),l=>(f(),y("div",{key:l.key,"data-testid":`plugin-ordering-${l.key}`},[p("h3",F,P(l.label),1),p("p",H,P(l.desc),1),(f(!0),y(C,null,B(l.orderings,(ne,o)=>(f(),y(C,{key:ne},[p("label",{class:"ordering-plugin-label",for:`${l.key}-${o}`}," Plugin "+P(o+1),9,Z),p("div",{class:"ordering-plugin-select","data-testid":`${l.key}-${o}`},[i(n,{id:`${l.key}-${o}`,"model-value":r.value[l.key].access[o],appearance:"select","enable-filtering":"",items:S(l.key,o),"onUpdate:modelValue":te=>{ee(l.key,o,te)}},null,8,["id","model-value","items","onUpdate:modelValue"]),i(t,{appearance:"btn-link",class:"delete ml-5",onClick:()=>{ae(l.key,o)}},{icon:d(()=>[i(c,{icon:"trash",size:"18"})]),_:2},1032,["onClick"])],8,j)],64))),128)),i(t,{class:"ordering-plugin-add",appearance:"btn-link",onClick:()=>{se(l.key)}},{default:d(()=>[q]),_:2},1032,["onClick"])],8,z))),128)),k.value?(f(),pe(u,{key:0,"alert-message":k.value,appearance:"danger"},null,8,["alert-message"])):ge("",!0),p("div",G,[i(t,{appearance:"primary",onClick:le},{default:d(()=>[J]),_:1}),i(t,{appearance:"outline",class:"ml-4",onClick:re},{default:d(()=>[N]),_:1})])])}}});O=ye(Q,[["__scopeId","data-v-d63c4073"]])});export{Pe as __tla,O as default};