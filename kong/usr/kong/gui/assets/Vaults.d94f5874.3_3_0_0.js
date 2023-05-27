/*
  This software is copyright Kong Inc. and its licensors.
  Use of the software is subject to the agreement between your organization
  and Kong Inc. If there is no such agreement, use is governed by and
  subject to the terms of the Kong Master Software License Agreement found
  at https://konghq.com/enterprisesoftwarelicense/.
*/

import{t as p}from"./typedefs.6c779761.3_3_0_0.js";import{aH as Ye,__tla as Ze}from"./index.84d84090.3_3_0_0.js";import{c as f,__tla as tr}from"./monaco-editor.90904fcf.3_3_0_0.js";import{c as g}from"./index.6d4e40f9.3_3_0_0.js";let v,R,y,er=Promise.all([(()=>{try{return Ze}catch{}})(),(()=>{try{return tr}catch{}})()]).then(async()=>{function I(t){return t}var m=I;function M(t,e,r){switch(r.length){case 0:return t.call(e);case 1:return t.call(e,r[0]);case 2:return t.call(e,r[0],r[1]);case 3:return t.call(e,r[0],r[1],r[2])}return t.apply(e,r)}var N=M,U=N,_=Math.max;function C(t,e,r){return e=_(e===void 0?t.length-1:e,0),function(){for(var n=arguments,a=-1,u=_(n.length-e,0),l=Array(u);++a<u;)l[a]=n[e+a];a=-1;for(var o=Array(e+1);++a<e;)o[a]=n[a];return o[e]=r(l),U(t,this,o)}}var B=C;function G(t){return function(){return t}}var H=G,K=typeof f=="object"&&f&&f.Object===Object&&f,L=K,z=L,J=typeof self=="object"&&self&&self.Object===Object&&self,Q=z||J||Function("return this")(),b=Q,W=b,X=W.Symbol,j=X,x=j,T=Object.prototype,Y=T.hasOwnProperty,Z=T.toString,c=x?x.toStringTag:void 0;function tt(t){var e=Y.call(t,c),r=t[c];try{t[c]=void 0;var n=!0}catch{}var a=Z.call(t);return n&&(e?t[c]=r:delete t[c]),a}var et=tt,rt=Object.prototype,nt=rt.toString;function at(t){return nt.call(t)}var ut=at,O=j,ot=et,ct=ut,it="[object Null]",pt="[object Undefined]",w=O?O.toStringTag:void 0;function lt(t){return t==null?t===void 0?pt:it:w&&w in Object(t)?ot(t):ct(t)}var st=lt;function ft(t){var e=typeof t;return t!=null&&(e=="object"||e=="function")}var q=ft,vt=st,yt=q,dt="[object AsyncFunction]",ht="[object Function]",gt="[object GeneratorFunction]",mt="[object Proxy]";function _t(t){if(!yt(t))return!1;var e=vt(t);return e==ht||e==gt||e==dt||e==mt}var bt=_t,jt=b,xt=jt["__core-js_shared__"],Tt=xt,d=Tt,E=function(){var t=/[^.]+$/.exec(d&&d.keys&&d.keys.IE_PROTO||"");return t?"Symbol(src)_1."+t:""}();function Ot(t){return!!E&&E in t}var wt=Ot,qt=Function.prototype,Et=qt.toString;function St(t){if(t!=null){try{return Et.call(t)}catch{}try{return t+""}catch{}}return""}var Pt=St,At=bt,kt=wt,Dt=q,Ft=Pt,Vt=/[\\^$.*+?()[\]{}|]/g,$t=/^\[object .+?Constructor\]$/,Rt=Function.prototype,It=Object.prototype,Mt=Rt.toString,Nt=It.hasOwnProperty,Ut=RegExp("^"+Mt.call(Nt).replace(Vt,"\\$&").replace(/hasOwnProperty|(function).*?(?=\\\()| for .+?(?=\\\])/g,"$1.*?")+"$");function Ct(t){if(!Dt(t)||kt(t))return!1;var e=At(t)?Ut:$t;return e.test(Ft(t))}var Bt=Ct;function Gt(t,e){return t==null?void 0:t[e]}var Ht=Gt,Kt=Bt,Lt=Ht;function zt(t,e){var r=Lt(t,e);return Kt(r)?r:void 0}var Jt=zt,Qt=Jt,Wt=function(){try{var t=Qt(Object,"defineProperty");return t({},"",{}),t}catch{}}(),Xt=Wt,Yt=H,S=Xt,Zt=m,te=S?function(t,e){return S(t,"toString",{configurable:!0,enumerable:!1,value:Yt(e),writable:!0})}:Zt,ee=te,re=800,ne=16,ae=Date.now;function ue(t){var e=0,r=0;return function(){var n=ae(),a=ne-(n-r);if(r=n,a>0){if(++e>=re)return arguments[0]}else e=0;return t.apply(void 0,arguments)}}var oe=ue,ce=ee,ie=oe,pe=ie(ce),le=pe,se=m,fe=B,ve=le;function ye(t,e){return ve(fe(t,e,se),t+"")}var de=ye;function he(t,e){for(var r=-1,n=t==null?0:t.length,a=Array(n);++r<n;)a[r]=e(t[r],r,t);return a}var ge=he;function me(t,e,r,n){for(var a=t.length,u=r+(n?1:-1);n?u--:++u<a;)if(e(t[u],u,t))return u;return-1}var _e=me;function be(t){return t!==t}var je=be;function xe(t,e,r){for(var n=r-1,a=t.length;++n<a;)if(t[n]===e)return n;return-1}var Te=xe,Oe=_e,we=je,qe=Te;function Ee(t,e,r){return e===e?qe(t,e,r):Oe(t,we,r)}var Se=Ee;function Pe(t,e,r,n){for(var a=r-1,u=t.length;++a<u;)if(n(t[a],e))return a;return-1}var Ae=Pe;function ke(t){return function(e){return t(e)}}var De=ke;function Fe(t,e){var r=-1,n=t.length;for(e||(e=Array(n));++r<n;)e[r]=t[r];return e}var Ve=Fe,$e=ge,Re=Se,Ie=Ae,Me=De,Ne=Ve,Ue=Array.prototype,P=Ue.splice;function Ce(t,e,r,n){var a=n?Ie:Re,u=-1,l=e.length,o=t;for(t===e&&(e=Ne(e)),r&&(o=$e(t,Me(r)));++u<l;)for(var s=0,$=e[u],Xe=r?r($):$;(s=a(o,Xe,s,n))>-1;)o!==t&&P.call(o,s,1),P.call(t,s,1);return t}var Be=Ce,Ge=Be;function He(t,e){return t&&t.length&&e&&e.length?Ge(t,e):t}var Ke=He,Le=de,ze=Ke,Je=Le(ze),Qe=Je;let A,i,k,D,F,V,h;A=["hcv","aws","gcp"],i=["env",...{VITE_USER_NODE_ENV:"production",BASE_URL:"/__km_base__/",MODE:"production",DEV:!1,PROD:!0}.VITE_KMOSS!=="true"?A:[]],k=[{name:"prefix",type:"input",inputType:"text",required:!0}],D=[{name:"region",type:"select",inputType:"text",required:!0,values:["us-east-2","us-east-1","us-west-1","us-west-2","af-south-1","ap-east-1","ap-southeast-3","ap-south-1","ap-northeast-3","ap-northeast-2","ap-southeast-1","ap-southeast-2","ap-northeast-1","ca-central-1","eu-central-1","eu-west-1","eu-west-2","eu-south-1","eu-west-3","eu-north-1","me-south-1","sa-east-1","us-gov-east-1","us-gov-west-1"]}],F=[{name:"project_id",type:"input",inputType:"text",required:!0}],V=[{name:"protocol",type:"select",inputType:"text",required:!0,default:"http",one_of:["http","https"]},{name:"host",type:"input",inputType:"text",required:!0,default:"127.0.0.1"},{name:"port",type:"input",inputType:"number",required:!0,default:8200},{name:"namespace",type:"input",inputType:"text",required:!1},{name:"mount",type:"input",inputType:"text",required:!0,default:"secret"},{name:"kv",type:"select",inputType:"text",required:!0,default:"v1",one_of:["v1","v2"]},{name:"token",inputType:"text",type:"input",required:!0}],h={name:{label:"Vault Type",type:"select",inputType:"text",required:!0,searchable:!0,default:"env",values:g(i),placeholder:"Select an installed Vaults"},prefix:{label:"Prefix",type:"input",inputType:"text",required:!0,searchable:!0,placeholder:"Enter a prefix, should not be one of [env, hcv, aws, gcp]"},description:{label:"Description",type:"input",inputType:"text",placeholder:"Enter description"}},v={env:k,gcp:F,aws:D,hcv:V},R=(()=>{const t={id:p.id,enabled:p.enabled,updated_at:p.updated_at,created_at:p.created_at,...Object.entries(h).reduce((r,[n,a])=>(r[n]=a,r),{})},e=[];return i.forEach(r=>{e.push(...v[r])}),t.advanced=e.reduce((r,{model:n,...a})=>(r["config."+a.name]=a,r),{}),t})(),y=g(h);function We(t){v[t].forEach(e=>{const r="config-"+e.name,n={label:"Config-"+e.name,type:e.type,inputType:e.inputType,default:e.default??null,required:e.required,visible:a=>{const u=Qe(g(i),t);return a&&!Ye.deepIncludes(u,a.name)}};switch(e.type){case"select":n.values=e.values||e.one_of||[];break}y[r]=n})}i.forEach(t=>{We(t)}),y.tags=p.tags});export{er as __tla,v as a,R as c,y as v};
